output: pingpong-join.o pingpong.o queue.o
	gcc pingpong-join.o pingpong.o queue.o -o output

pingpong-join.o: pingpong-join.c
	gcc -c pingpong-join.c

pingpong.o: pingpong.c pingpong.h datatypes.h
	gcc -c pingpong.c

queue.o: queue.c queue.h
	gcc -c queue.c

clean:
	rm *.o output
