// funções gerais ==============================================================

#include <ucontext.h>
#include <stdio.h>
#include <stdlib.h>
#include "datatypes.h"
#include "pingpong.h"
#include "queue.h"

#include <sys/time.h>

#define TOP_PRIO -20
#define LOW_PRIO 20
#define AGING_FACTOR -1
#define TICKS 20

task_t task_main, task_dispatcher;
task_t *last_task, *current_task;
task_t *ready_queue, *suspend_queue;
ucontext_t context_main;
static int tick_count;
unsigned int sys_time;
// estrutura que define um tratador de sinal (deve ser global ou static)
struct sigaction action ;

// estrutura de inicialização to timer
struct itimerval timer;

unsigned int systime(){
    return sys_time;
}

// tratador do sinal
void tick_counter (int signum)
{
    if(current_task->task_type != 0 && signum == 14) {
        if (tick_count > 0) {
            --tick_count;
            ++sys_time;
            ++current_task->cpu_time;
        } else {
            //tick_count = TICKS;
            task_yield();
        }
    }
    //printf ("Recebi o sinal %d\n", signum) ;
}

task_t *priority_scheduler() {
    task_t *task_removed = NULL;
    task_t *aux = ready_queue;
    task_t *top_prio = NULL;
    int last_prio = LOW_PRIO;

    do{
        if(aux->dynamic_prio <= last_prio){
            last_prio = aux->dynamic_prio;
            top_prio = aux;
        }
        aux = aux->next;
    }while(aux != ready_queue);

    do{
        if(top_prio->static_prio >= aux->static_prio && top_prio->tid >= aux->tid && top_prio->dynamic_prio == aux->dynamic_prio) {
            top_prio = aux;
        } else {
            aux->dynamic_prio += AGING_FACTOR;
        }
        aux = aux->next;
    }while (aux != ready_queue);

    top_prio->dynamic_prio = top_prio->static_prio;
    task_removed = (task_t*) queue_remove((queue_t**) &ready_queue, (queue_t*) top_prio);
    return task_removed;
}

task_t *fcfs_scheduler(){
    task_t *task_removed = NULL;
    task_removed = (task_t*) queue_remove((queue_t**) &ready_queue, (queue_t*) ready_queue);
    return task_removed;
}

void dispatcher_body () // dispatcher é uma tarefa
{
    task_t *next;
    while ( queue_size((queue_t*) ready_queue) > 0)
    {
        tick_count = TICKS;
        //sys_time = 0;
        next = priority_scheduler(); // scheduler é uma função
        if (next)
        {
            //next->activations++;
            //next->
            // ações antes de lançar a tarefa "next", se houverem
            //task_suspend(next, &suspend_queue);
            task_switch (next) ; // transfere controle para a tarefa "next"
            // ações após retornar da tarefa "next", se houverem
        }
    }
    task_exit(0) ; // encerra a tarefa dispatcher
}

// Inicializa o sistema operacional; deve ser chamada no inicio do main()
void pingpong_init() {
    /* desativa o buffer da saida padrao (stdout), usado pela função printf */
    setvbuf(stdout, 0, _IONBF, 0);

    last_task = NULL;

    getcontext(&context_main);

    task_main.context = context_main;
    task_main.task_type = 1;
    task_main.tid = 0;
    current_task = &task_main;

    queue_append((queue_t **) &ready_queue, (queue_t *) &task_main);

    task_dispatcher.tid = task_create(&task_dispatcher, (void*)dispatcher_body, NULL);
    // registra a a��o para o sinal de timer SIGALRM
    action.sa_handler = tick_counter ;
    sigemptyset (&action.sa_mask) ;
    action.sa_flags = 0 ;
    if (sigaction (SIGALRM, &action, 0) < 0)
    {
        perror ("Erro em sigaction: ") ;
        exit (1) ;
    }

    // ajusta valores do temporizador
    timer.it_value.tv_usec = 1000 ;      // primeiro disparo, em micro-segundos
    timer.it_value.tv_sec  = 0 ;      // primeiro disparo, em segundos
    timer.it_interval.tv_usec = 1000 ;   // disparos subsequentes, em micro-segundos
    timer.it_interval.tv_sec  = 0 ;   // disparos subsequentes, em segundos

    // arma o temporizador ITIMER_REAL (vide man setitimer)
    if (setitimer (ITIMER_REAL, &timer, 0) < 0)
    {
        perror ("Erro em setitimer: ") ;
        exit (1) ;
    }
}

// gerência de tarefas =========================================================

// Cria uma nova tarefa. Retorna um ID> 0 ou erro.
int task_create(task_t *task,            // descritor da nova tarefa
                void (*start_func)(void *),    // funcao corpo da tarefa
                void *arg) {            // argumentos para a tarefa

    ucontext_t context;
    char *stack;

    getcontext(&context);

    stack = malloc(STACKSIZE);
    if (stack) {
        context.uc_stack.ss_sp = stack;
        context.uc_stack.ss_size = STACKSIZE;
        context.uc_stack.ss_flags = 0;
        context.uc_link = 0;
    } else {
        perror("Erro na criação da pilha: ");
        exit(1);
    }
    if(task != &task_main) {
        makecontext(&context, (void *) (*start_func), 1, arg);
    }

    task->context = context;
    if(task == &task_dispatcher) {
        return 1;
    }
    else if(queue_size((queue_t*)ready_queue) > 1){
        task->tid = ready_queue->prev->tid + 1;
    }
    else{
        task->tid = 2;
    }
    task->task_type = 1;
    task->static_prio = 0;
    task->dynamic_prio = 0;
    queue_append((queue_t **) &ready_queue, (queue_t *) task);
    return ready_queue->tid;
}

// Termina a tarefa corrente, indicando um valor de status encerramento
void task_exit(int exitCode) {
    current_task->execution_time = systime();
    printf("Task %d exit: running time %4d, cpu time %4d, %d activations\n", task_id(), current_task->execution_time, current_task->cpu_time, current_task->activations);
    if(queue_size((queue_t*) ready_queue) > 0 ) {
        task_switch(&task_dispatcher);
    } else{
        //task_switch(&task_main);
    }
}

// alterna a execução para a tarefa indicada
int task_switch(task_t *task) {
    int i = 0;
    last_task = current_task;
    current_task = task;
    current_task->activations++;
    i = swapcontext(&last_task->context, &current_task->context);
    return i;
}

// retorna o identificador da tarefa corrente (main eh 0)
int task_id() {
    return current_task->tid;
}

// suspende uma tarefa, retirando-a de sua fila atual, adicionando-a à fila
// queue e mudando seu estado para "suspensa"; usa a tarefa atual se task==NULL
void task_suspend(task_t *task, task_t **queue) {
    task_t *task_removed = NULL;
    if(queue != NULL){
        if(task != NULL){
            task_removed = (task_t*) queue_remove((queue_t**) &queue, (queue_t*) task);
            queue_append((queue_t**) &suspend_queue, (queue_t*) task_removed);
        }
        else{
            task_removed = (task_t*) queue_remove((queue_t**) &queue, (queue_t*) current_task);
            queue_append((queue_t**) &suspend_queue, (queue_t*) task_removed);
        }
    }
}

// acorda uma tarefa, retirando-a de sua fila atual, adicionando-a à fila de
// tarefas prontas ("ready queue") e mudando seu estado para "pronta"
void task_resume(task_t *task) {
    task_t *task_removed = NULL;
    if(task != NULL){
        task_removed = (task_t*) queue_remove((queue_t**) &suspend_queue, (queue_t*) task);
        queue_append((queue_t**) &ready_queue, (queue_t*) task_removed);
    }
}

// operações de escalonamento ==================================================

// libera o processador para a próxima tarefa, retornando à fila de tarefas
// prontas ("ready queue")
void task_yield() {
    if(&task_dispatcher != current_task)
        queue_append((queue_t **) &ready_queue, (queue_t *) current_task);
    task_switch(&task_dispatcher);
}

// define a prioridade estática de uma tarefa (ou a tarefa atual)
void task_setprio(task_t *task, int prio) {
    if(task == NULL)
        task = current_task;
    task->static_prio = prio;
    task->dynamic_prio = task->static_prio;
}

// retorna a prioridade estática de uma tarefa (ou a tarefa atual)
int task_getprio(task_t *task) {
    if(task == NULL)
        task = current_task;
    return task->static_prio;
}

// operações de sincronização ==================================================

// a tarefa corrente aguarda o encerramento de outra task
int task_join(task_t *task) {}

// operações de gestão do tempo ================================================

// suspende a tarefa corrente por t segundos
void task_sleep(int t) {}
