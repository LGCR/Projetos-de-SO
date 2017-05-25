all: output1 output2 output3

output1: pingpong-tasks1.o pingpong.o
	gcc pingpong-tasks1.o pingpong.o -o output1

output2: pingpong-tasks2.o pingpong.o
	gcc pingpong-tasks2.o pingpong.o -o output2

output3: pingpong-tasks3.o pingpong.o
	gcc pingpong-tasks3.o pingpong.o -o output3

pingpong-tasks1.o: pingpong-tasks1.c
	gcc -c pingpong-tasks1.c

pingpong-tasks2.o: pingpong-tasks2.c
	gcc -c pingpong-tasks2.c

pingpong-tasks3.o: pingpong-tasks3.c
	gcc -c pingpong-tasks3.c

pingpong.o: pingpong.c pingpong.h datatypes.h
	gcc -c pingpong.c

clean:
	rm *.o output1
	rm *.o output2
	rm *.o output3
