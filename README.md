# Haskell problems on hackerrank

SumOfPowers.hs - Find the number of ways in which a given integer, X, can be expressed as the sum of the the Nth power of unique natural numbers. 

We count the number of combinations that are less than the integer X. 

Inside findNums', we ask if the current sum with the next number to the Nth power is greater than X. If it is, we crossed the threshold and went too far, and so we can just return 0.
If the current sum with the next number to the Nth Power is greater equal to X, then we found a combination, so we return 1.
Otherwise, we are less than the current number and so we will add two branches where one branch contains the next number to the Nth Power and the other does not. In this way, we can cover all of the possible sequences
until one of the sequences gets too big, or it sums up to X.

======================================================================================================================================================================

FilterElements.hs - Given a list of N integers A = [a1, a2, ..., aN], you have to find those integers which are repeated at least K times. 
In case no such element exists you have to print -1.
If there are multiple elements in A which are repeated at least K times, then print these elements ordered by their first occurrence in the list
	
	Input:
	3
	9 2
	4 5 2 5 4 3 1 3 4
	9 4
	4 5 2 5 4 3 1 3 4
	10 2
	5 4 3 2 1 1 2 3 4 5
	Output:
	4 5 3
	-1
	5 4 3 2 1

======================================================================================================================================================================

areaVol.hs - Find the area under a curve and the volume when it is rotated around the x-axis. The curve is represented as f(x) = a1*x^b1 + a2*x^b2 + ... + an*x^bn. I solved this by finding the general forms of the area and volume and writing corresponding functions that would fill in the corresponding terms.

Relevant functions:
	solve: Takes in left and right bounds as well as the coefficients as and bs.
	area: computes the area of the curve
	volume: computes the volume of the curve by using the general formula
	f: computes the first part of the volume function
	g: computes the second part of the volume function
	pow: general power function which also handles negative numbers
	integrate: computes the integral of an exponential term with a special case for 1/x

======================================================================================================================================================================

SequenceColors.hs - Given a sequence of N balls in 4 colors: red, green, yellow and blue. The sequence is full of colors if and only if all of the following conditions are true:

    There are as many red balls as green balls.
    There are as many yellow balls as blue balls.
    Difference between the number of red balls and green balls in every prefix of the sequence is at most 1.
    Difference between the number of yellow balls and blue balls in every prefix of the sequence is at most 1.

Output True if balanced, otherwise False.

======================================================================================================================================================================

MingleStrings.hs - Given two strings of the same length, interweave these strings such that the combined string alternates characters from both strings.
Ex: abcd efgh -> aebfcgdh

======================================================================================================================================================================

Compression.hs - Given a string, represent consecutive appearances of characters as a character along with a number denoting the number of consecutive appearances. 
Ex: abcaaabbb -> abca3b3

======================================================================================================================================================================

PrefixCompression.hs - Given two strings, extract the prefix from both strings and output the strings without the prefix along with the length.
	
	Input:
	abcdefpr
	abcpqr
	Output:
	3 abc
	5 defpr
	3 pqr

======================================================================================================================================================================

PermuteString.hs - Given a string with even length, swap the characters at the even position, i with the next character, i+1

======================================================================================================================================================================

GCD.hs - Find the greatest common denominator using the Eucliden algorithm

======================================================================================================================================================================

Pascal.hs - Print the pascal triangle up to the number of rows given

======================================================================================================================================================================

Fibonacci.hs - Find the Fibonacci element at the given index

