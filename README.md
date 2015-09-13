#Bitwise Calculator 
This is a simple bitwise operation calculator, as of version 1.0.0 it can peform simple arithmetic as well. Numeric arguments passed can be in binary,octal, decimal, and hexadecimal radix. It might be too simple for certain users. Please see the examples below to gain a visual on what this project of mine can do, it may be useful to users who need a quick cli tool to do some of the following operations.

###Bitwise
* Shift Left
* Shift Right
* And 
* Not
* Or
* Exclusive Or (XOR)
* Rotate Right (ROR)
* Rotate Left (ROL)

###Arithmetic
* Addition 
* Subtraction
* Division
* Multiplication
* Modulus

###Installation
```bash
	#you may need to use sudo
	gem install bitwiseCalc
```
###Usage
Numbers passed as arguments can be passed in binary, hex, octal, and decimal.
Note numbers passed incorrectly WILL NOT be used.
Passing numbers in a radix other than base10:
* binary number = 0b[0-1]
* octal number  = 0[0-7]
* hex number    = 0x[0-9a-f]

Note the order in which you enter the number(s) and operation does NOT matter.
However, if you wish to pass any flags, they MUST be the first argument passed.

```bash
	#binary input operations
	bitwiseCalc <flags> <num1> <operation> <num2> 
	
	#unary input operations
	bitwiseCalc <flags> <operation> <num>
	
	#Flags 
            -n
                disables colorized output(enabled by default)
            -h
                outputs usage and exits
```

Results will be output in Octal, Decimal, Hexadecimal, and Binary(32, 64, and 128 bit).

###Bit Rotation
Bit rotation isn't included by default with Ruby(unlike SHR, SHL, e.t.c).It is done using arrays of binary strings; my solution to this is based on the 2 diagrams at the bottom of [this page](https://en.wikipedia.org/wiki/Circular_shift)

###Examples
Here are some screengrabs that will provide a visual on what you are to expect and some clarification on instructions.

####Octal and Decimal Arguments with Or Operation 
![alt Text](https://i.imgur.com/MxWzeR4.png "Octal and Decimal Arguments with the Or operation")

####Hex and Binary Arguments with Shift Left Operation 
![alt Text](https://i.imgur.com/zVQ6hoG.png "Hex and Binary Arguments with Shift Left Operation")
####Binary and Decimal Arguments with Arithmetic Add operation 

![alt Text](https://i.imgur.com/dk7vyVK.png "Binary and Decimal Arguments with Arithmetic Add operation")

####Using RAD operation to output arguments in different radices 
![alt Text](https://i.imgur.com/fyZQGES.png "Using RAD operation to output arguments in different radices")
