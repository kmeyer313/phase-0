#Attr Methods

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# Pseudocode

# Input: Nothing is really going in once these classes are created because it is already stored. All that will be input is the creation of a new Greetings instance and the method call hello on the new Greetings object.

# Output: The greeting that we created in the definition of hello in the Greetings class.

# Steps:
# - Create NameData class
# - Add attribute accessor to create reader/writer instance variable for name
# - Define the initialize method so that the variable has a value of my name upon creation of a new NameData class (or when accessed by the Greetings class)

# - Create Greetings class
# - Add initialize method that refers to the NameData class to create a new NameData class
# - Define a greeting, such as hello
#    - Puts output of a string that calls the NameData class and calls the name method that has been created because of the attribute accessor.


class NameData
  attr_accessor :name

  def initialize
    @name = "Katie"
  end

end


class Greetings

  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Hello #{@NameData.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 0 (or 1?): Read and Research
What are these methods doing?
- Each method is setting the values that will be returned when they are called.

How are they modifying or returning the value of instance variables?
- They are using the instance variables that were set in the initialization so that when they are called, the values from the initialization will be returned. The change methods accept a new argument that will override the intitialized value.

Release 1 (2): Identify the Changes
What changed between the last release and this release?
- attr_reader :age  # was added

What was replaced?
- the method for age was replaced

Is this code simpler than the last?
- Yes, 3 lines of code reduced to one, and the output stayed the same.

Release 2 (3): More Changes
What changed between the last release and this release?
- attr_writer :age  # was added
- the instance_of_profile.age is simpler because there is not a method called change_my_age; :age is now set as a reader and writer attribute which allows us to read it outside of the class

What was replaced?
- the method for change_my_age was removed

Is this code simpler than the last?
- Yep!

Release 3 (4): Using attr_methods
n/a

Release 4 (5,6?): Apply and Reflect
What is a reader method?
- One that returns a value of an instance variable outside of the calss

What is a writer method?
- One that can change a value of an instance variable outside of the class

What do the attr methods do for you?
- They simplify the code because they eliminate the need to write methods to define the instance variables. They automatically create a method that reads and returns the value of the instance variable outside of the class AND/OR can change the variable outside of the class.
- the attribute reader simplifies this:
def name
  @name = name
end

to this --> attr_reader :name

- the attribute writer simplifies this:
def name(name)
  @name = name
end
to this --> attr_writer :name

- to call both, you can do attr_accessor if you want it to be able to have both capabilities

Should you always use an accessor to cover your bases? Why or why not?
- No, because there may be variables that you wouldn't want to be changeable. You may not want every variable to have attr_writer capabilities. What would be a reason that you would not want a variable to have attr_writer abilities only? Hmm.

What is confusing to you about these methods?
- Nothing! Awesome! That's a first. :)

=end