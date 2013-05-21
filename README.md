Application Name: Mars
Language Used: Ruby

Description of the Application: 

  The purpose of this application is to calculate the movement of two Mars rovers across a plateau. The rovers' position on the plateau is represented by a combination of x and y coordinates and the four cardinal compass points.

  Inputs to the application include:
    - Plateau size, which is represented by a grid. 
    - Initial positions of two Mars rovers on the plateau. Positions include an x-position, y-position, and cardinal direction that the rover is facing. 
    - Instructions for movement across the plateau. Instructions are either "L" (turn left 90 degrees), "R", (turn right 90 degrees), or "M", (move forward one position). 

  The application takes the above inputs and calculates the resulting position of the two Mars rovers. 

  The design of this application includes a Runner, which takes in the file, sends instructions, and outputs results. The Instructions class creates directions for the Rover and Grid. The Rover class is responsible for maintaining each rover’s position on the grid, and the Grid is responsible for maintaining the dimensions of the given grid. 

  The application uses Rake and RSpec for testing purposes.


Assumptions of the code: 

  The code currently assumes the following: 
    - Exactly two Mars rovers will explore the plateau. 
    - Rovers will always have a starting position on the plateau. 
    - Rovers will not be given instructions to move off the plateau.
    - Rovers can occupy the same position on the plateau. 
    - A blank file will not be passed in to the application, and only valid instructions will be in the file. 
      

Instructions to run this application: 

  To install application dependencies: 
    - Within the application folder, run 'bundle' to install RSpec and Rake dependencies.

  To run the application: 
    - Run './bin/parse instructions.txt' to run the application. 
      - './bin/parse' starts the application, and 'instructions.txt' is a file that is passed in to be evaluated and executed by the program. 

  To run tests:
    - Run 'rspec' to run all tests.

