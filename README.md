<!--
@Author: Vargas Hector <vargash1>
@Date:   Saturday, January 9th 2016, 7:32:23 pm
@Email:  vargash1@wit.edu
@Last modified by:   vargash1
@Last modified time: Tuesday, May 10th 2016, 6:04:03 pm
-->

#bitwiseCalc [![Gem Version](https://badge.fury.io/rb/bitwiseCalc.svg)](http://badge.fury.io/rb/bitwiseCalc)
This is a simple bitwise operation calculator designed to let the user see what is going on. Numeric arguments passed can be in binary, octal, decimal, and hexadecimal radix. It might be too simple for certain users, but it might be perfect for students. Please see the examples below to gain a visual on what this project of mine can do. Note this program was intended for CLI use only.
This project will soon be replaced by a much more organized version, but I didn't want to break anything in the meantime!

##All operations

###Bitwise Operations
These operations must have binary arguments. With the exception or NOT(unary).
The NOT operation will only consider the first number argument passed.

|      |                   |
| :--: | :---------------  |
| SHL  | Shift Left        |
| SHR  | Shift Right       |
| AND  | Logical And       |
| NAND | Negative And      |
| NOT  | Bitwise Not       |
| OR   | Inclusive Or      |
| NOR  | Negative Or       |
| XOR  | Exclusive Or      |
| XNOR | Complement of XOR |
| ROR  | Rotate Right      |
| ROL  | Rotate Left       |

###Arithmetic Operations
These operations must have binary arguments.

|      |                   |
| :--: | :---------------  |
| ADD  | Addition          |
| SUB  | Subtraction       |
| DIV  | Division          |
| MUL  | Multiplication    |
| MOD  | Modulus           |
| POW  | Exponentiation    |

###Misc. Operations
This operation can be used either with unary arguments, or with binary arguments.

|      |                   |
| :--: | :---------------  |
| RAD  | Display input in mentioned radices |

###Installation
```bash
	#may need sudo
	gem install bitwiseCalc
```
###Usage
Numbers passed as arguments can be passed in binary, hex, octal, and decimal.
Note numbers passed incorrectly WILL NOT be used.
Passing numbers in a radix other than base10:

| Radix         | How to pass |
| :-----        | :------     |
| binary number | 0b[0-1]     |
| octal number  | 0[0-7]      |
| hex number    | 0x[0-9a-f]  |

```bash
	#binary input operations
	bitwiseCalc [flag] number operation number

	#unary input operations
	bitwiseCalc [flag] number operation

	#Flags
      	-f
            disables spacing every 4 bits in binary output(enabled by default)
        -s
            disables newline every 64 bits in binary output(enabled by default)
        -n
            disables colorized output(enabled by default)
        -h
            outputs usage and exits
        -g
            outputs base 10 numbers in grouped form(disabled by default)
```

Results will be output in Octal, Decimal, Hexadecimal, and Binary(MSB first).

###Bit Rotation
Bit rotation isn't included by default with Ruby. It is done using arrays of binary strings;
my solution to this is based on the 2 diagrams at the bottom of [this page](https://en.wikipedia.org/wiki/Circular_shift).

###Examples
Here are some screenshots that will provide a visual on what you are to expect and some clarification on instructions.

####Basic usage
![alt Text](http://i.imgur.com/2MzzYUe.png "Two Decimal Arguments with logical AND")

####Disabling Color
![alt Text](http://i.imgur.com/Ouj7QUe.png "Hex and Binary Arguments with Shift Left Operation")

####Using an Octal Argument
![alt Text](http://i.imgur.com/kW3x3nX.png "Using POW operation with an octal and decimal argument")

####Using RAD operation to output arguments in different radices
![alt Text](http://i.imgur.com/cySjQ1p.png "A binary and hexadecimal argument being displayed in different radices")

####XNOR usage
![alt Text](http://i.imgur.com/aiY75D7.png "2 Decimal numbers with XNOR operation")
