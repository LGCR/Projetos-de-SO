//Author: Lucas Giovanni de Castro Ribeiro
//Março 2017

// funções gerais ==============================================================

#include <ucontext.h>
#include <stdio.h>
#include <stdlib.h>
#include "datatypes.h"
#include "pingpong.h"

task_t task_main;
task_t *last_task, *current_task;
ucontext_t context_main;
int task_tid;

// Inicializa o sistema operacional; deve ser chamada no inicio do main()
void pingpong_init() {
    /* desativa o buffer da saida padrao (stdout), usado pela função printf */
    setvbuf(stdout, 0, _IONBF, 0);

    last_task = NULL;

    getcontext(&context_main);

    task_main.context = context_main;
    current_task = &task_main;
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
    ++task_tid;
    task->tid = task_tid;

    return task->tid;
}

// Termina a tarefa corrente, indicando um valor de status encerramento
void task_exit(int exitCode) {
    task_switch(&task_main);
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
void task_suspend(task_t *task, task_t **queue) {}

// acorda uma tarefa, retirando-a de sua fila atual, adicionando-a à fila de
// tarefas prontas ("ready queue") e mudando seu estado para "pronta"
void task_resume(task_t *task) {}

// operações de escalonamento ==================================================

// libera o processador para a próxima tarefa, retornando à fila de tarefas
// prontas ("ready queue")
void task_yield() {}

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
