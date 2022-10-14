#include <stdio.h>
#include "work.h"



int calculate(int max){
   int result = 0;
   for (int i = 0; i < max; i++) {
      result = fibonacci(i);
      //printf("%d\t\n", result);
   }
   return result;
}

int fibonacci(int i) {
   if(i == 0) {
      return 0;
   }	
   if(i == 1) {
      return 1;
   }
   return fibonacci(i-1) + fibonacci(i-2);
}

