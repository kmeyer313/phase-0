# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
  #end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# After puts "What's there to hate about #{thing}?" we need a new line that has "end"
# 6. Why did the interpreter give you this error?
# It is missing "end" after the while loop before defining the method is ended.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# undefined local variable or method 'south_park'
# 3. What additional information does the interpreter provide about this type of error?
# It is for main:Object (NameError)
# 4. Where is the error in the code?
# south_park should have "=" after it with a value or "def" before it and a method beneath it
# 5. Why did the interpreter give you this error?
# It does not know if it is a variable or a method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# undefined method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# for main:Object (NoMethodError)
# 4. Where is the error in the code?
# between the parentheses
# 5. Why did the interpreter give you this error?
# The method needs parameters

# --- error -------------------------------------------------------

# def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# after def cartmans_phrase there needs to be () with a parameter in there, such as "string"
# 5. Why did the interpreter give you this error?
# Because when the method is called, it has an argument 'I hate Kyle' but when the method was defined, there were no parameters allowed for.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# after cartman_says when we call the method
# 5. Why did the interpreter give you this error?
#  there should be one argument in parentheses because when we defined the method, we gave it one parameter



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 110
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2) (ArgumentsError)
# 4. Where is the error in the code?
# in the parentheses where we call the method cartmans_lie
# 5. Why did the interpreter give you this error?
# There is only one argument when there should be two

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# (TypeError)
# 4. Where is the error in the code?
# in '*'
# 5. Why did the interpreter give you this error?
# We can't 5 something "Respect my authoritay" times. That doesn't make sense. It should be "Respect my authoritay" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError)
# 4. Where is the error in the code?
# in `/''
# 5. Why did the interpreter give you this error?
# You cannot divide a number by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# path of directories to the file and (LoadError)
# 4. Where is the error in the code?
# `require_relative'
# 5. Why did the interpreter give you this error?
# because it needs to be a .rb file, not .md


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# The second one threw me off when it said the error was in line 170. Once I realized the problem was in the second error, it wasn't difficult to see that it was missed "end".

# How did you figure out what the issue with the error was?
# When I brought up my obstacle to a pair this week, he reminded me that there is a comment that says, "# This is a tricky error. The line number may throw you off" and he helped me understand the directions a little more clearly.

# Were you able to determine why each error message happened based on the code?
# Yes.

# When you encounter errors in your future code, what process will you follow to help you debug?
# First I look at the line number (and double check the name of the file to make sure I am look at the correct line). Then I read the type of error and additional information to get a sense of the problem. Then I look to the code and the error. If I don't see the error and don't understand the error message, I research the error online.