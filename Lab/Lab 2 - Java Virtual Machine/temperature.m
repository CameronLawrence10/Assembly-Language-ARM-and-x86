comment(` Cameron Lawenrence
CPSC 2310 001
Lab2 - celcius to fareinehit
May24 2023 ')

comment(` start C and F on both left and right at -40 ')
bipush(-40)
bipush(-40)
istore_1
istore_2

label(loop)

comment(` push C and print ')
iconst_1
invokevirtual(1)

comment(` conversion formula F = (C * 9/5) + 32 ')             
iload_1
bipush(9)
imul
bipush(5)
idiv
bipush(32)
iadd
istore_2        

comment(` push F and print ')
iconst_2
invokevirtual(2)

comment(` increase by 10 everytime ')
iinc(1,10)      
iload_1

comment(` max of 120 for celcius ')
bipush(120)     
isub

comment(` if less than ')
ifle(loop)

return

