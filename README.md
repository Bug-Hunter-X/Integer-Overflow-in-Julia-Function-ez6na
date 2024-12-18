# Integer Overflow Bug in Julia

This repository demonstrates a subtle integer overflow bug in a simple Julia function. The function squares a number, but when applied to sufficiently large negative integers, it results in an unexpected output due to overflow. The solution involves using a different data type to handle the larger numbers and avoid overflow.

## Bug Description
The `myfunction` calculates the square of input number. If the input number is negative it returns a negative square. However, when input is a very large negative number, an overflow error may occur because of the limited range of integers in Julia. 

## Solution
The solution uses the `BigInt` type, which supports arbitrarily large integers and prevents overflow. By converting the input `x` to `BigInt`, the calculation avoids the potential for overflow.