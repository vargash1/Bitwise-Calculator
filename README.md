#Bitwise Calculator 
This is a simple bitwise operation calculator, it might be too simple for certain users. See the examples below to gain a visual on what this project of mine can do, it may be useful to students who need a quick cli tool to do some of the following operations 
This calculator can peform the following operations:
* Shift Left
* Shift Right
* And 
* Not
* Or
* Exclusive Or (XOR)
* Rotate Right
* Rotate Left
* RAD - Output number(s) in binary, hex, and decimal form

###Installation
```bash
	#you may need to use sudo
	gem install bitwiseCalc
	#requirements
	gem install colorize
```

###Usage
####Note the order and case sensitivity of arguments do not matter

For binary operations, either of the follow would work(without the "<>") 
```bash
	bitwiseCalc <num1> <operation> <num2>
	bitwiseCalc <num1> <num2> <operation>
	bitwiseCalc <operation> <num1> <num2>
```
For using unary operations RAD and NOT
```bash
	bitwiseCalc <operation> <num>
	bitwiseCalc RAD <num1> <num2>
```
Results will be output in Decimal, Hexadecimal, and Binary(32 & 64 bit).
###Bit Rotation
Bit rotation isn't included by default with Ruby(unlike SHR, SHL, e.t.c).It is done using arrays of binary strings; my solution to this is based on the 2 diagrams at the bottom of [this page](https://en.wikipedia.org/wiki/Circular_shift)
###Examples
Here are some screengrabs that will provide a visual on what you are to expect.

![alt Text](https://i.imgur.com/tJg2V3H.png "Outputting number in different radixes")
![alt Text](https://i.imgur.com/cuLXXZl.png "NOT example")
![alt Text](https://i.imgur.com/P3yF4xm.png "ROL example")
![alt Text](https://i.imgur.com/QHZZNxc.png "AND example")
