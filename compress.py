# -*- coding: utf-8 -*-
"""
Created on Thu Mar 23 22:39:32 2023

@author: priya
"""

def compress(string):
    count = 1
    resultString = ""
    for i in range(len(string)-1):
        if string[i+1] != string[i]:
            resultString = resultString + string[i] + str(count)
            count = 1
        else:
            count = count + 1
    resultString = resultString + string[i] + str(count)
            
    if (len(string)>len(resultString)):
        return resultString
    return string

print(compress("aaabbcccdde"))