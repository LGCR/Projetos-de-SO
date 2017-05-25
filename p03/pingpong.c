//Author: Lucas Giovanni de Castro Ribeiro
//Março 2017

// funções gerais ==============================================================

#include <ucontext.h>
#include <stdio.h>
#include <stdlib.h>
#include "datatypes.h"
#include "pingpong.h"
#include "queue.h"

task_t task_main, task_dispatcher;
task_t *last_task, *current_task;
task_t *ready_queue, *suspend_queue;
ucontext_t context_main;

task_t *scheduler(){
    task_t *task_removed = NULL;
    task_removed = (task_t*) queue_remove((queue_t**) &ready_queue, (queue_t*) ready_queue);
    return task_removed;
}

void dispatcher_body () // dispatcher é uma tarefa
{
    task_t *next;
    while ( queue_size((queue_t*) ready_queue) > 0 )
    {
        next = scheduler() ; // scheduler é uma função
        if (next)
        {
            task_switch (next) ; // transfere controle para a tarefa "next"
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
    current_task = &task_main;

    task_create(&task_dispatcher, (void*)dispatcher_body, NULL);
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

    makecontext(&context, (void *) (*start_func), 1, arg);
    task->context = context;
    if(task == &task_dispatcher) {
        return 0;
    }
        queue_append((queue_t **) &ready_queue, (queue_t *) task);
        task->tid = task->prev->tid + 1;
        return ready_queue->tid;

}

// Termina a tarefa corrente, indicando um valor de status encerramento
void task_exit(int exitCode) {
    if(queue_size((queue_t*) ready_queue) > 0 ) {
        task_switch(&task_dispatcher);
    } else{
        task_switch(&task_main);
    }
}

// alterna a execução para a tarefa indicada
int task_switch(task_t *task) {
    int i = 0;
    last_task = current_task;
    current_task = task;
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
    if(&task_main != current_task && &task_dispatcher != current_task)
        queue_append((queue_t **) &ready_queue, (queue_t *) current_task);
    task_switch(&task_dispatcher);
}

// define a prioridade estática de uma tarefa (ou a tarefa atual)
void task_setprio(task_t *task, int prio) {}

// retorna a prioridade estática de uma tarefa (ou a tarefa atual)
int task_getprio(task_t *task) {}

// operações de sincronização ==================================================

// a tarefa corrente aguarda o encerramento de outra task
int task_join(task_t *task) {}

// operações de gestão do tempo ================================================

// suspende a tarefa corrente por t segundos
void task_sleep(int t) {}
