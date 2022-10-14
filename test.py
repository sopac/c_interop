from ctypes import *

libwork = cdll.LoadLibrary("libwork.so") 

res = libwork.calculate(40)
print(res)

print("Finished.")