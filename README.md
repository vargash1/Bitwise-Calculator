#bitwiseCalc [![Gem Version](https://badge.fury.io/rb/bitwiseCalc.svg)](http://badge.fury.io/rb/bitwiseCalc)
This is a simple bitwise operation calculator designed to let the user see what is going on. Numeric arguments passed can be in binary, octal, decimal, and hexadecimal radix. It might be too simple for certain users, but it might be perfect for students. Please see the examples below to gain a visual on what this project of mine can do. Note this program was intended for CLI use only.
This project will soon be replaced by a much more organized version, but I didn't want to break anything in the meantime!

###Bitwise Operations
* SHL  --- Shift Left
* SHR  --- Shift Right
* AND  --- Logical And
* NAND --- Negative And 
* NOT  --- Bitwise Not
* OR   --- Inclusive Or
* NOR  --- Negative Or 
* XOR  --- Exclusive Or 
* XNOR --- Complement of XOR
* ROR  --- Rotate Right 
* ROL  --- Rotate Left 

###Arithmetic Operations
* ADD  --- Addition 
* SUB  --- Subtraction
* DIV  --- Division
* MUL  --- Multiplication
* MOD  --- Modulus
* POW  --- Exponentiation

###Misc. Operations
* RAD  --- Display input in mentioned radices

###Installation
```bash
	#may need sudo
	gem install bitwiseCalc
```
###Usage
Numbers passed as arguments can be passed in binary, hex, octal, and decimal.
Note numbers passed incorrectly WILL NOT be used.
Passing numbers in a radix other than base10:

* binary number = 0b[0-1]
* octal number  = 0[0-7]
* hex number    = 0x[0-9a-f]

```bash
	#binary input operations
	bitwiseCalc <flags> <num1> <operation> <num2> 
	
	#unary input operations
	bitwiseCalc <flags> <operation> <num>
	
	#Flags 
      		-f
                disables spacing every 4 bits in binary output 
            -s
                disables newline every 64 bits in binary output
            -n
                disables colorized output
            -h
                outputs usage and exits
            -g 
                outputs base 10 numbers in grouped form
```

Results will be output in Octal, Decimal, Hexadecimal, and Binary(MSB first).

###Bit Rotation
Bit rotation isn't included by default with Ruby(unlike SHR, SHL, e.t.c).It is done using arrays of binary strings; my solution to this is based on the 2 diagrams at the bottom of [this page](https://en.wikipedia.org/wiki/Circular_shift) However, since my program supports up to 256 bit numbers, then it you should carefully use ROL. ROL will rotate these numbers with respect to this. That means that if you ROL 1 by 1 it will become 2^255. I will fix this in the next patch but I intend to completely break down this code and provide a more well structured solution.  

###Examples
Here are some screengrabs that will provide a visual on what you are to expect and some clarification on instructions.

####Basic usage 
![alt Text](http://i.imgur.com/2MzzYUe.png "Two Decimal Args with logical AND")

####Disabling Color 
![alt Text](http://i.imgur.com/Ouj7QUe.png "Hex and Binary Arguments with Shift Left Operation")

####Using an Octal Argument 
![alt Text](http://i.imgur.com/kW3x3nX.png "Using POW operation with an octal and decimal argument")

####Using RAD operation to output arguments in different radices 
![alt Text](http://i.imgur.com/cySjQ1p.png "A binary and hexadecimal argument being displayed in different radices")

####XNOR usage
![alt Text](http://i.imgur.com/aiY75D7.png "2 Decimal numbers with XNOR operation")
