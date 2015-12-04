puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts 'What is your favorite number?'
fav_number = gets.chomp
better_number = fav_number.to_i+1
puts 'I think ' + better_number.to_s + ' is better!'

#Reflection questions for 4.3 Variables and Methods

#How do you define a local variable?
#Choose a name for the variable, it must start with a lowercase letter and use _ in between multiple words. Set it equal to the value you want it to have for later when you use the variable. For example: my_variable = "Katie"

#How do you define a method?
#Write "def" followed by the name of the variable with its parameters in parentheses. On the next line, write what you want the method to do when it runs. You need to include "end" at the end. Then to run the method, you need to call it. For example:
#def my_method
  #puts "Hello Katie!"
#end
#my_method

#What is the difference between a local variable and a method?
#Variables hold information that will be used later. Methods are things that do stuff to things like strings, integers, and floats.

#How do you run a ruby program from the command line?
#ruby file_name.rb

#How do you run an RSpec file from the command line?
#rspec file_name.rb

#What was confusing about this material? What made sense?
#The directions were confusing but once I got past that, I had a hard time passing some tests until I realized I needed to use "return" instead of "puts" as in the address exercise.

#Links to the exercises:

#Return a Formatted Address: https://github.com/kmeyer313/phase-0/blob/master/week-4/address/my_solution.rb

#Defining Math Methods: https://github.com/kmeyer313/phase-0/blob/master/week-4/math/my_solution.rb