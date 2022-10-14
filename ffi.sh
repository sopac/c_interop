rm -rf org/
rm *.class *.so *.o 

export LD_LIBRARY_PATH=$(pwd):$LD_LIBRARY_PATH
#export JAVA_HOME=/home/sachin/Lib/jextract/build/jextract
export PATH=/home/sachin/Lib/jextract/build/jextract/bin:$PATH
gcc -shared -o libwork.so work.c
jextract --source -l work --target-package org.sopac work.h
javac --enable-preview --source 19 Test_FFI_Java19.java org/sopac/*.java
java --enable-preview --source 19 --enable-native-access=ALL-UNNAMED -Djava.library.path=$(pwd) Test_FFI_Java19.java


