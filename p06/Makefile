all: output1 output2

output1: pingpong-contab.o pingpong.o queue.o
	gcc pingpong-contab.o pingpong.o queue.o -o output1

output2: pingpong-contab-prio.o pingpong.o queue.o
	gcc pingpong-contab-prio.o pingpong.o queue.o -o output2

pingpong-contab.o: pingpong-contab.c
	gcc -c pingpong-contab.c

pingpong-contab-prio.o: pingpong-contab-prio.c
	gcc -c pingpong-contab-prio.c

pingpong.o: pingpong.c pingpong.h datatypes.h
	gcc -c pingpong.c

queue.o: queue.c queue.h
	gcc -c queue.c

clean:
	rm *.o output1 output2
