# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create instance variable or an attr_reader for letter ( b, i, n, g, o) and number (1-100)? Should be defined in initialize def and created with attr_reader?? ?? Should (b, i, n, g, o) be an array of strings?

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Output: an array(?) with a letter (string?) and an integer
  #   - use a (string or array?) method on letter variable to select a random value
  #   - use a (range?) method on number variable to select a random value
  #   - create instance variable for call, which is an array of the string and integer that were selected
  #   - return an array that includes the random letter (string) and number (integer) => ["string", num]

# Check the called column for the number called.
  #   - for each nested array, look at the index that is the same as the index for the ["B", "I", "N", "G", "O"] value that was called
  #   - IF the number is in the column (present), replace with an 'X' --> bingo_board[1][3] = 'X'
  #   - ELSE do nothing
  #

#### What is the point of this one?
# Display a column to the console
  # return the column of the #Access the value of the index

# Display the board to the console (prettily)
  # ??? Not sure yet...

# Initial Solution

class BingoBoard

  attr_reader :letter, :number

  def initialize(board)
    @bingo_board = board
    @letter = ["B", "I", "N", "G", "O"]
    @number = (1..100)
  end

  def call
    @call = []
    # @call << @letter.sample
    @call << @number.rand #(1..100)
  #   - return an array that includes the random letter (string) and number (integer) => ["string", num]
  end

  def check
  #   - for each nested array, look at the index that is the same as the index for the ["B", "I", "N", "G", "O"] value that was called
  #   - IF the number is in the column (present), replace with an 'X' --> bingo_board[1][3] = 'X'
  #   - ELSE do nothing
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# p board
p new_game.call



# p board[1][3]
# p board[1][3] = 'X'
# p board

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
-

What are the benefits of using a class for this challenge?
-

How can you access coordinates in a nested array?
-

What methods did you use to access and modify the array?
-

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
-

How did you determine what should be an instance variable versus a local variable?
-

What do you feel is most improved in your refactored solution?
-


=end