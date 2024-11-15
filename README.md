# Casio-fx-202p-info
Information about the casio FX-202P and FX201P
The internal program representation and character sets are identical on these two calculators.
There is information about how the RAM is used, with programs, memories and various internal data structures
in this repository.

<code>
Edge Connector Pinout
=====================
This is the connector that is at the bottom right corner of the PCB. Has a
cover on some calculators and can also be found on the FX-201P.
Supply for ICs and hence signals are negative, i.e. less than 0V.
  
1     Pin 6 HD36106  (CLKB)
2     Pin 15 T5006P (DIN)
3     nc                                    (connected to a signal on the FX-201P)
4     Pin 16 TC5006P (5V) 0V on calculator
5     Pin 8 HD36106  (0V)
6     Pin 4 TC5006P A1
7     Pin 6 TC5006P A4
8     A9
9     A8
10    A7
11    A6
12    A5
13    A2
14    A0
15    A3
16    nc
17    nc

T3184    Clock?

FX201P
======

The FX201P has two HD32106 1024 x 1bit (actually 16 x 64bit serial registers). One (the one closest to the display) stores programs,
the other stores the memories used by the programs and the 'M' memory. Program token storage is shown in a document in the FX201P diretory.

The memory HD36106 does not use all of its space. There are 5 memory slots that aren't used, but can be used if the program tokens are altered 
to use them. For instance, the program :

1 = K 1234 : ANS 1:

stores a number in memory 1 and then displays it. This can be altered to the following:

(FA) = K 1234 : ANS (FA)

Where (FA) is the code for memory 10 (F1 is the code for 1, FA is the code for 10). When run this works,
the memory number is displayed as a large lower case r as in the code for SUB#.


FX201P RAM Replacement
======================

The RAM replacement uses an RP2040 on a Pico-Zero form factor PCB to replace both HD36106 RAM chips. A USB interface is provided which can display the contents of the RAM (with decoding of memories and program keystrokes).
Programs and memories can be saved to the RP2040 flash and can be loaded back. Memories and programs can be saved and loaded separately.
It also has an interface that allows the extra features to be accessed from the keyboard or by a program.

Programs can be 'chained' by loading flash slots as required to execute a larger program.



