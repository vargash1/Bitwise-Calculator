#Bitwise Calculator 
This is a simple bitwise operation calculator designed to let the user see what is going on. Numeric arguments passed can be in binary, octal, decimal, and hexadecimal radix. It might be too simple for certain users. Please see the examples below to gain a visual on what this project of mine can do, it may be useful to user's who need a quick cli tool to do some of the following operations. 

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

Note the order in which you enter the number(s) and operation does NOT matter.
However, if you wish to pass any flags, they MUST be the first argument passed.
Numbers WILL BE parsed in from left to right. 

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

Results will be output in Octal, Decimal, Hexadecimal, and Binary(32, 64, and 128 bit) MSB first.

###Bit Rotation
Bit rotation isn't included by default with Ruby(unlike SHR, SHL, e.t.c).It is done using arrays of binary strings; my solution to this is based on the 2 diagrams at the bottom of [this page](https://en.wikipedia.org/wiki/Circular_shift)

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
