# COMP-B13
All of my programming assignments from my Computer Architecture and Organization course at Bakersfield College in Spring 2020

Class Work
----------
  - 01.21.20  - Assignment 1: AvgNoZero **C**: Builds an array of floating point numbers from input on the command line, and prints the average value of all the non-zero numbers the user has input.
  - 02.19.20  - Assignment 2: TwosComplement **C**: Takes binary numbers as strings from the command line arguments, and converts them in-place to their two's complement equivalents, then prints them out. Also includes an alternate implementation without using if-statements, which I wrote as a challenge to myself. This implementation currently only works with some versions of the GNU compiler, I may come back later and see if I can make it work universally.
  - 03.07.20  - Assignment 3: MysteryFunctionCall **x64 GAS**: Parameters for this assignment obtained after passing my name through a hashing function. Essentially everyone had to pass parameters to a pre-assembled function (mystery64.0) in a way determined by their hash values. I had to, for example, put the first argument into the r9d register, my second argument at the stack pointer, and the return value could be found in the r9 register with three levels of indirection.
  - 03.15.20   - Assignment 4: MonotonicallyIncreasingWords **C**: Takes input from a file or from the command line (until EOF), and prints out all the words that are strictly monotonically increasing, that is, each letter is strictly alphabetically after the previous letter. Makes some assumptions about the words. See source for more.
  - 03.24.20   - Assignment 5: IfElseAndLoops **C**: We were provided two assembly programs and tasked with translating them into C: one with a series of if statements and one with a series of loops.
