# Less Recent Used Module

A SystemVerilog description for a LRU

## How a LRU works

The LRU saves the time when a input is pressed and, after the limit size is reached, it erases the input with the least recent time

## PINs in this description

- clk : Clock
- rst : Reset
- b1, b2, b3, b4, b5 : The inputs, here represented as 5 buttons
- l1, l2, l3, l4, l5 : LEDs to show if a input is active or not, if a LED is off then it means that it is not active

