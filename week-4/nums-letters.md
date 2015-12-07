# 4.2 Numbers, Letters, and Variable Assignment

##Release 1: Summarize
###What does puts do?
It stands for 'put string' and will output what you put after "puts."

###What is an integer? What is a float?
An integer is a number (positive or negative) that does not have decimal points. A float is number (positive or negative) that does have decimal points.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return the decimal value, for example, 9.0/2.0=>4.5 and integer division will return an integer without a decimal value for example, 9/2=>4 (rounding down rather than up).

##Release 2: Try it!
###Mini-challenges from section 2.5
Hours in a year
```
365 * 24
=> 8760
```

Minutes in a decade
```
60 * 24 * 365 * 10
=> 5256000
```


##Links to Release 5: Exercises
[Defining Variables](https://github.com/kmeyer313/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String Methods](https://github.com/kmeyer313/phase-0/blob/master/week-4/simple-string.rb)

[Local Variables and Basic Arithmetical Operations](https://github.com/kmeyer313/phase-0/blob/master/week-4/basic-math.rb)

##Release 7: Reflect
###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
```
+ for addition
- for subtraction
* for multiplication
/ for division
% is modulus (which returns the remainder when one number is divided by another)
```

###What is the difference between integers and floats?
intergers = numbers without decimal points
floats = numbers with decimal points

###What is the difference between integer and float division?
In integer division, if the quotient is a decimal, only an integer will be returned. To get a decmial, you need to use floats. If you aren't sure if two integers will return a float, you can apply the method ._f to turn it into a float if necessary.

###What are strings? Why and when would you use them?
Strings are groups of letters (and sometimes numbers). We use them when writing a question or text that the user will see.

###What are local variables? Why and when would you use them?
Local variables are created to store something we want to use later. We name the variable and assign a value to it. We can call on it later with a method to make it do something.

###How was this challenge? Did you get a good review of some of the basics?
This was a fine challenge. I am excited to dig back into Ruby!