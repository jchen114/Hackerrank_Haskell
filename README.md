# Hackerrank_Haskell
Hackerrank problems using Haskell

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
Ex:
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

