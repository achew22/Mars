Application Name: Mars
Language Used: Ruby

Description of the Application: 

  The purpose of this application is to calculate the movement of two Mars rovers across a plateau. 

  Inputs to the application include:
    - Plateau size, which is represented by a grid. 
    - Initial positions of the two rovers on the plateau. Positions include an x-coordinate, y-coordinate, and cardinal direction that the rover is facing. 
    - Instructions for movement across the plateau. Instructions are either "L" (turn left 90 degrees), "R", (turn right 90 degrees), or "M", (move forward one position). 

  The application takes the above inputs and calculates the resulting position of the two Mars rovers. 

  The design of this application includes a Runner, which takes in a file, sends instructions, and outputs results. The Instructions class creates directions for rovers and grids. Rovers are responsible for maintaining their position on the grid, and a grid is responsible for maintaining its own dimensions. 

  The application uses Rake and RSpec for testing purposes.


Assumptions of the application: 

  The application currently assumes the following: 
    - Exactly two Mars rovers will explore the plateau. 
    - Rovers will always have a starting position on the plateau. 
    - Rovers will not be given instructions to move off the plateau.
    - Rovers can occupy the same position on the plateau. 
    - A blank file will not be passed in to the application, and only valid and standard instructions will be in the file. 
      

Instructions to run this application: 

  To install application dependencies: 
    - Within the application folder, run 'bundle' to install RSpec and Rake dependencies.

  To run the application: 
    - Run './bin/parse instructions.txt' to run the application. 

  To run tests:
    - Run 'rspec' to run all tests.


