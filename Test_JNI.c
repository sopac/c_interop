#include <stdio.h>
#include "Test_JNI.h"
#include "work.h"

JNIEXPORT void JNICALL Java_Test_1JNI_sayHello
  (JNIEnv *, jobject){
    printf("Hello from C.\n");
  }

JNIEXPORT jint JNICALL Java_Test_1JNI_calculate
  (JNIEnv *, jobject, jint max){    
    return calculate(max);
  }


//javac Test_JNI.java
//javac -h . Test_JNI.java
//gcc -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux Test_JNI.c work.c -o Test_JNI.o
//gcc -shared -fPIC -o libnative.so Test_JNI.o -lc
//java -Djava.library.path=. Test_JNI 