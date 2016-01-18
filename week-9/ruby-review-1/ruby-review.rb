# Create a Car Class from User Stories

# I worked on this challenge with Dave Spivey.

# 1. Pseudocode
# You are tasked with creating a Car object that is to operate in the context of a pizza delivery video game.


# 1) As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# CREATE car class
#   - Intialize with model and color


# 2) As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
#   - set attr accessor for distance with default value of 0
#   - method for drive_distance that accepts arguments (distance, speed)
#       - increment total DISTANCE

# 3) As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
#   - define method to check current speed

# 4) As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
#   - turn method that takes argument left or right

# 5) As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# method for accelerate that accepts integer argument
#    - change value of SPEED

# 6) As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
#   - instance variable that holds value of total distance

# 7) As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
#  - method for stop that changes value of speed to 0

# 8) As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
#  - end each method with puts statement explaining what just happened


# 2. Initial Solution

class Car
  attr_accessor :total_distance, :speed, :pizza_box

  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @speed = 0
    @pizza_box = []
  end

  def drive(current_distance, current_speed=@speed)
    @total_distance += current_distance
    @speed = current_speed
    puts "#{@model} drove #{current_distance} miles at #{current_speed} MPH for a total of #{@total_distance} miles."
  end

  def check_speed
    puts "#{@model} is currently driving #{@speed} MPH."
  end

  def turn(direction)
    if direction == "left"
      puts "Turning left"
    elsif direction == "right"
      puts "Turning right"
    else
      puts "#{@model} cannot fly"
    end
  end

  def accelerate(new_speed)
    @speed = new_speed
    puts "#{@model} is now traveling at #{@speed} MPH."
  end

  def log_distance
    puts "#{@model} has driven #{@total_distance} miles."
  end

  def stop
    @speed = 0
    puts "#{@model} has stopped."
  end

  def deliver
    delivery = @pizza_box.shift
    puts "#{delivery.type} pizza has been delivered."
  end

  def put_pizza_in_box(new_pizza_box)
    @pizza_box = new_pizza_box
  end

end

class Pizza
  attr_reader :type

  def initialize(type)
    @type = type
  end

end



# 3. Refactored Solution


# 4. DRIVER TESTS GO BELOW THIS LINE

rey = Car.new("Avalon", "beige")
rey.drive(0.25, 25)
rey.stop
rey.turn("right")
rey.drive(1.5, 35)
rey.check_speed
rey.accelerate(15)
rey.drive(0.25)
rey.stop
rey.turn("left")
rey.drive(1.4, 35)
rey.stop
rey.log_distance

pizza1 = Pizza.new("Pepperoni")
pizza2 = Pizza.new("Gluten-free")
pizza3 = Pizza.new("Veggie")
pizza4 = Pizza.new("Supreme")
new_pizza_box = [pizza1, pizza2, pizza3, pizza4]

rey.put_pizza_in_box(new_pizza_box)
rey.deliver
rey.deliver
rey.deliver
rey.deliver


# 5. Reflection

=begin
What concepts did you review in this challenge?
- using instance variables and attributes accessors

What is still confusing to you about Ruby?
- Nothing really came to light in this challenge.

What are you going to study to get more prepared for Phase 1?
- Passing methods between classes.

=end
