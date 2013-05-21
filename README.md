Application Name: Mars
Language Used: Ruby

Description of the Application: 

  The purpose of this application is to calculate the movement of two Mars rovers across a plateau. The rovers' position on the plateau is represented by a combination of x and y co-ordinates and the four cardinal compass points.

  Inputs to the application include:
    - Plateau size, which is represented by a grid. 
    - Initial positins of two Mars rovers on the plateau. This initial positions include a x-position, y-position, and cardinal direction that the rover is facing. 
    - Instructions for movement across the pleateau. Instructions are either "L" (turn left 90 degrees), "R", (turn right 90 degrees), or "M", (move forward one position). 

  The application takes the above inputs and calculates the resulting position of the two Mars rovers. 

  The application uses Rake and RSpec for testing purposes.


Assumptions of the code: 

  The code currently assumes the follwing: 
    - Exactly two Mars rovers will explore this plateau. 
    - Rovers will always have a starting postition on the plateau. 
    - Rovers will not be given instructinos to move off the plateau.
    - Rovers can occupy the same position on the grid. 
    - A blank file will not be passed in to the application, and only valid instructions will be in the file. 
      

Instructions to run this application: 

  To install application dependencies: 
    - Within the application folder, run 'bundle' to install RSpec and Rake dependencies.

  To run the application: 
    - Run './bin/parse instructions.txt' to run the application. 
      - './bin/parse' starts the application, and 'instructions.txt' is a file that is passed in to be evaluated and executed by the program. 

  To run tests:
    - Run 'rspec' to run all tests.
