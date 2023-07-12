comment(` Cameron Lawenrence
CPSC 2310 001
Assingment 1
May23 2023 
This program converts binary to decimal')

comment(' declare variables ')
word(ten,10)  
word(two,2)
word(one,1)
word(zero,0)
word(total,0)
word(N, 111) comment(' in prompt, testit ')
word(negative, -1)
word(pow, 1)
word(deci, 0)

label(start)
	load(N)
    	ble0(total) comment(' less than or equal ')

comment(' remainders to change binary to decimal ')
label(loop)
    	div(ten)
    	mul(ten)               
    	sub(N)
comment(' multiply the negatives to positives ')    	
    	mul(negative) 
    	mul(pow)               
    	add(deci)   	
    	store(deci) 
    	
load(pow)
    mul(two)
    store(pow)
comment(' n is iterating ')                               
    load(N)
    div(ten)
    store(N)
 comment(' branch greater than ')            
    bgt0(loop)

label(total)
    print(deci)
    halt

    end(start)    	 	



