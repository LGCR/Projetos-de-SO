// PingPongOS - PingPong Operating System
// Prof. Carlos A. Maziero, DAINF UTFPR
// Versão 1.0 -- Março de 2015
//
// Estruturas de dados internas do sistema operacional

#ifndef __DATATYPES__
#define __DATATYPES__

#include <ucontext.h>
// Estrutura que define uma tarefa
typedef struct task_t
{
  struct task_t *prev;
  struct task_t *next;
  int tid;
  ucontext_t context;
  int static_prio;
  int dynamic_prio;
  int task_type; // 0 para tarefa de sistema e 1 para tarefa de usuário
  unsigned int execution_time;
  unsigned int cpu_time;
  int activations;
  int task_isActive; // 0 para tarefa encerrada e 1 para tarefa ativa;
  int task_exitCode;
  int task_join;
  // preencher quando necessário
} task_t ;

// estrutura que define um semáforo
typedef struct
{
  // preencher quando necessário
} semaphore_t ;

// estrutura que define um mutex
typedef struct
{
  // preencher quando necessário
} mutex_t ;

// estrutura que define uma barreira
typedef struct
{
  // preencher quando necessário
} barrier_t ;

// estrutura que define uma fila de mensagens
typedef struct
{
  // preencher quando necessário
} mqueue_t ;

#endif
