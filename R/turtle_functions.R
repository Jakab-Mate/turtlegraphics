# Set up the canvas

setup <- function(){
plot.new()
plot.window(xlim = c(0, 10), ylim = c(0, 10), xaxs = "i", yaxs = "i")
title(main = "Turtle Graphics in R", xlab = "", ylab = "")

# Initialize the turtle's starting position and direction
turtle_pos <<- c(5, 5)
turtle_dir <<- 0 # 0 = right, 90 = up, 180 = left, 270 = down
}

# Function to move the turtle forward a given distance
move_turtle <- function(distance) {
  # Convert direction to radians
  radians <- turtle_dir * pi / 180

  # Calculate the new x and y coordinates
  new_x <- turtle_pos[1] + distance * cos(radians)
  new_y <- turtle_pos[2] + distance * sin(radians)

  # Draw a line from the current position to the new position
  lines(c(turtle_pos[1], new_x), c(turtle_pos[2], new_y))

  # Update the turtle's position
  turtle_pos <<- c(new_x, new_y)
}

# Function to turn the turtle left by a given angle (in degrees)
turn_left <- function(angle) {
  turtle_dir <<- (turtle_dir + angle) %% 360
}

# Function to turn the turtle right by a given angle (in degrees)
turn_right <- function(angle) {
  turtle_dir <<- (turtle_dir - angle) %% 360
}

say_hello <- function(){
  print("Hey, I'm just a stupid turtle")
}

