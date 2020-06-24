# define display_board method

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# define input_to_index

def input_to_index(user_input)
  user_input.to_i-1
end

# define valid_move? method and include position_taken? method

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true
  end
end


# define move method

def move(array, index, character = "X" )
  array[index] = character
end

# define turn method
# pseudocode: get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end

def turn(board)
  counter = 0
  board.each do |squares|
    if squares == "X" || squares == "O"
      counter += 1
    end
end

# def turn_count(board)
#   counter = 0
#   board.each do |spaces|
#     if spaces == "X" || spaces == "O"
#         counter += 1
#     end
#   end
#   counter
# end





