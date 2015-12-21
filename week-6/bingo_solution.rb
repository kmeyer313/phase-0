# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5 hours on this challenge.


# Release 0: Pseudocode -----------------------------------
# Outline:

# CREATE a method to generate a letter ( b, i, n, g, o) and a number (1-100) => ["string", num]
# Output: an array with a letter (string) and an integer
  # CREATE instance variables for letter and number
  # CREATE instance variable with empty array for call (an array of the random string and integer)
  # GENERATE random value from letter array and push to empty array
  # GENERATE random value from integer range and push to empty array

# CREATE a method to check whether that column has that number in the existing bingo board
# Output: "X" in place of called number, else number remains
  # CREATE a new variable, check_index, for the index that will be used while iterating through checker (call the index method on @letter array using value of 0 index in @call as the argument) check_index = @letter.index(@call[0])
    # ACCESS the value of the letter in call variable using array index
    # ACCESS the index of the letter variable using the value from the previous step
  # ITERATE through nested arrays
    # IF the letter in the array matches the called letter
      # REPLACE with "X"
    # ELSE
      # leave it alone
  # DISPLAY a column to the console

# DISPLAY the board to the console (prettily)
  #

# Initial Solution ----------------------------------------

class BingoBoard

  # attr_reader :letter, :number # These didn't seem necessary once things started working.
  # attr_accessor :board  # I thought this may help me override all of the numbers that have been replaced with "X" but it did not.

  def initialize(board)
    @board = board
  end

  def call
    @letter = ["B", "I", "N", "G", "O"]
    @number = (1..100)
    @call = [] # for testing use ==> ["G", 65]
    @call << @letter.sample
    @call << rand(@number)
  end

  def check
  # commented out code was used when trying to use map!
    check_index = @letter.index(@call[0])
    @board.each do |n|
      # if n.is_a?(Array)
        # n.each do |n|
          if n[check_index] == @call[1]
            # p true
            n[check_index] = "X"
          # else
            # return n[@check_index]
          end
        # end
      # end
    end
    # p @board
  end

  def display
    p @board[0]
    p @board[1]
    p @board[2]
    p @board[3]
    p @board[4]
  end

end

# Refactored Solution -------------------------------------
class BingoBoard

  def initialize(board)
    @board = board
  end

  def call
    @letter = ["B", "I", "N", "G", "O"]
    @number = (1..100)
    @call = [@letter.sample, rand(@number)]
  end

  def check
    check_index = @letter.index(@call[0])
    @board.each { |n| n[check_index] = "X" if n[check_index] == @call[1] }
  end

  def display
    p @board[0]
    p @board[1]
    p @board[2]
    p @board[3]
    p @board[4]
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE -------
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display
p new_game.call
p new_game.check
p new_game.display

#Reflection -----------------------------------------------

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
- It was difficult, although necessary, to break down into small steps. It took me some time to wrap my head around how to check if the the call number was on the board. The first line of code in my checker method does this.

What are the benefits of using a class for this challenge?
- It is helpful to use the instance variables across different methods.

How can you access coordinates in a nested array?
- I find it helpful to work backwards. When writing the checker method, I first found the value at index 0 in the call. Then I used that with the index method on the @letter array to identify the index that I would use to check each array with.

What methods did you use to access and modify the array?
- I wasn't sure this would work when iterating through the arrays at a specific index only @letter.index(@call[0]), but it did! I was able to replace the accessed value with "X" with ==> if n[@check_index] == @call[1] and n[@check_index] = "X". This remained on the board when I added more method calls. If I only had these three methods once, the game reset when I ran the file again in IRB.
p new_game.call
p new_game.check
p new_game.display

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
- Using the .index method on an array returns the index of the value passed into the argument (which was the indexed value of the call variable). What I wanted it to do was a little more complex than how I have normally used it. After studying the example, I gave it a shot by passing the code that finds the value based on the index and it worked.

How did you determine what should be an instance variable versus a local variable?
- I wanted to use instance variables across methods. Local variables stayed within the scope of a method.

What do you feel is most improved in your refactored solution?
- I simplified the @call variable assignment by combining three lines into one. For the checker method, I tried using .map! but did not find a working solution.
- While the second line of code in the check method works, I don't think it is easily readable.


=end