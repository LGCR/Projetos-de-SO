#include "queue.h"

//------------------------------------------------------------------------------
// Insere um elemento no final da fila.
// Condicoes a verificar, gerando msgs de erro:
// - a fila deve existir
// - o elemento deve existir
// - o elemento nao deve estar em outra fila

void queue_append (queue_t **queue, queue_t *elem){
	if((elem != NULL) && (elem->next == NULL) && (elem->prev == NULL)){
		if(*queue == NULL){
			*queue = elem;
			(*queue)->next = *queue;
			(*queue)->prev = *queue;
		}
		else{
			elem->prev = (*queue)->prev;
			elem->next = *queue;
			elem->next->prev = elem;
			(*queue)->prev->prev->next = elem;
		}
	}
}

//------------------------------------------------------------------------------
// Remove o elemento indicado da fila, sem o destruir.
// Condicoes a verificar, gerando msgs de erro:
// - a fila deve existir
// - a fila nao deve estar vazia
// - o elemento deve existir
// - o elemento deve pertencer a fila indicada
// Retorno: apontador para o elemento removido, ou NULL se erro

queue_t *queue_remove (queue_t **queue, queue_t *elem) {
	if((*queue) != NULL){
		queue_t *aux = (*queue);
		queue_t *aux_head = (*queue)->next;
		do {
			if (aux == elem) {
				if(queue_size((*queue)) > 1){
					(*queue) = elem->next;
					elem->prev->next = (*queue);
					(*queue)->prev = elem->prev;
					if(aux_head == elem){
						(*queue) = (*queue)->prev;
					}
				}
				else{
					(*queue) = NULL;
				}
				elem->next = NULL;
				elem->prev = NULL;
				return elem;
			}
			(aux) = (aux)->next;
			} while((*queue) != aux);
	}
	else{
		return NULL;
	}
}

//------------------------------------------------------------------------------
// Conta o numero de elementos na fila
// Retorno: numero de elementos na fila

int queue_size (queue_t *queue) {
	int i;
	if(queue != NULL){
		queue_t *aux = queue->next;
		i = 1;
		while(queue != aux){
			aux = aux->next;
			++i;
		}
		return i;
	}
	else{
		return 0;
	}
}

//------------------------------------------------------------------------------
// Percorre a fila e imprime na tela seu conteúdo. A impressão de cada
// elemento é feita por uma função externa, definida pelo programa que
// usa a biblioteca. Essa função deve ter o seguinte protótipo:
//
// void print_elem (void *ptr) ; // ptr aponta para o elemento a imprimir

void queue_print (char *name, queue_t *queue, void print_elem (void*) ) {}
