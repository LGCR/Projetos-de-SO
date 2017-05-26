output: pingpong-maintask.o pingpong.o queue.o
	gcc pingpong-maintask.o pingpong.o queue.o -o output

pingpong-maintask.o: pingpong-maintask.c
	gcc -c pingpong-maintask.c

pingpong.o: pingpong.c pingpong.h datatypes.h
	gcc -c pingpong.c

queue.o: queue.c queue.h
	gcc -c queue.c

clean:
	rm *.o output
