def fib(n):
    a = 0
    b = 1
    while a < n:
        print (a)
        a,b = b, a + b

if __name__ == '__main__':
    print(fib(10))
