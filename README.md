# Matlab Conway's Game-of-Life Project

## Introduction
This project is aimed at creating an application which showcases the famed Conway’s Game of Life. This was decided since The Zero-Player game had iterations of system analysis concepts and proves to be an important example of essential system specifications. Those specifications were reversibility, totality, and unpredictability. There was a need to showcase the types of GOL system types as well. Some were either in steady state, oscillating, dead or entirely random. The way to show this to the user was to allow them to enter whichever 2 dimensional 64x64 shape and to see the Game of Life run itself. An additional feature was added to allow the user to see a random input play itself.

## Methodology

### FindNeighbor
FindNeighbor.m has the purpose of executing the game itself. This is done since it takes a 64x64 array of 0s and 1s. the exact composition of those zeros and ones is determined by a variable called “random”.

### Maker
The role of maker.m is to create a grid according to the user’s choice. The way to do that is to allow the user to click on any box to turn it on. If the user clicks on it again, the box will turn off. This is to give the user the ability to create any initial state they want.

### Random Button
The Random button is different from the others since it does not need another button to run. The user can click it and start the process on its own. 
Here, we will access the aforementioned FindNeighbor.m and give the variable “Random” a value of 1. With it, the user can create a random initial state.

Find attached a full project report in the repository.
