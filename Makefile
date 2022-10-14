CC = gcc
FILES = work.c main.c
OUT_EXE = main
 
build: 
	$(CC) -o $(OUT_EXE) $(FILES)
	./main

shared:
	$(CC) -c -Wall -Werror -fpic work.c
	$(CC) -shared -o libwork.so work.o
	$(CC) -L$(PWD) -Wall -o test main.c -lwork
	LD_LIBRARY_PATH=$(PWD) ./test

jni:
	javac Test_JNI.java
	javac -h . Test_JNI.java
	gcc -c -fPIC work.c -o work.o
	gcc -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux Test_JNI.c -o Test_JNI.o
	gcc -shared -fPIC -o libwork.so Test_JNI.o work.o -lc
	java -Djava.library.path=. Test_JNI 

python:
	LD_LIBRARY_PATH=$(PWD) python test.py
 
clean: 
	rm -f *.o *.so *.class main test
 
rebuild: 
	clean build