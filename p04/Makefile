output: pingpong-scheduler.o pingpong.o queue.o
	gcc pingpong-scheduler.o pingpong.o queue.o -o output

pingpong-scheduler.o: pingpong-dispatcher.c
	gcc -c pingpong-scheduler.c

pingpong.o: pingpong.c pingpong.h datatypes.h
	gcc -c pingpong.c

queue.o: queue.c queue.h
	gcc -c queue.c

clean:
	rm *.o output
