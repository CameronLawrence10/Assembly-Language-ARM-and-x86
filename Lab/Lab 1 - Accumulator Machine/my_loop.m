comment(` Cameron Lawenrence
CPSC 2310 001
Lab1 - Accumulator Machine
May23 2023 ')

comment(` set aside memory and initialize variables ')
word(sum,0)  
word(i,0)
word(zero,0)
word(one,1)
word(ten,10)

label(start)

    comment(` sum = 0 ')
    load(zero) 
    store(sum)

    comment(` i = 1 ')
    load(one)
    store(i)

label(loop) 
    
    comment(` sum = sum = i ')
    load(sum) 
	add(i)
	store(sum) 

    comment(` i++ ' )
    load(i)
    add(one)
    store(i)
    
    comment(` Branch back to loop if ACC <= 10 ' )
    ble0(loop)

label(done)

    comment(` program operations ')
    print(sum)
    halt
    
    start
