# turtle-turtle

OBJECTIVE:

Turtle Tracks is a program that draws ASCII art. The name comes from the imagined movement of a turtle that can only move forward or backward, but it can turn at different angles to change direction.

Your program will take an input file of movement instructions, parse the file, and output another text file with the drawn object.



INPUT:

The input for the program will be a text files that contains a series of commands. This is the contents of the text file that we will be working with this evening:

____________________________________________________

41 

RT 90

FD 10

RT 45

FD 5

REPEAT 2 [ RT 90 FD 15 ]

RT 90

FD 5

RT 45

FD 9

______________________________________________________



READING THE COMMANDS:

The first number in the file is the size of the board. Because we are dealing with a square board, this means that it will be a 41 x 41 board. 

The commands are as follows:

FD n - Move the turtle forward, n spaces

BK n - Move the turtle back, n spaces 

RT n - Rotate the turtle right, n degrees

LT n - Rotate the turtle left, n degrees

REPEAT n [ commands ] - Sets a series of commands, per the above stated rules, and repeats them n times.

To keep things simple, the angular rotation will be limited to 45 degree increments. 



OUTPUT:

The board is a grid. Each placeholder space on the grid will be marked with a period followed by a space.

Consider the turtle your cursor. It starts in the middle of the board, and that spot will be automatically marked, even before any moves are made. The turtle will start facing up, and with each FD or BK step, the period is replaced with a marker to show where the turtle traveled. 



VARIATIONS:

Try making up your own patterns. 

See if you can print the image as an animation in the terminal. 

