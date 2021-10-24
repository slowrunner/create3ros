#!/usr/bin/env python3

import time

def fib(n):
 a,b = 1,1
 for i in range(n-1):
  a,b = b,a+b
 return a

while(1):
 N=1000
 F=100
 acc=0
 start = time.time()
 for j in range(N):
  for i in range(F): 
   fib(i)
  stop=time.time()
  acc=acc+(stop-start)
  start=stop
 print("fib({}): {:.3f} sec, {}x: {:.3f} sec".format(F,acc/N,N,acc))
 time.sleep(0.001)
