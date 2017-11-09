# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]
]

board = ["X", "X", "X", "O", "X", "O", "O", "O", "X"]

def won?(board)
  # puts "The board is:"
  # puts board
  WIN_COMBINATIONS.detect do |combo|
    # combo = [0, 1, 2]
    # 
    # puts 'The current combo is:'
    # puts combo
    # puts "In the first position is: #{board[combo[0]]}"
    # puts "In the first position is: #{board[combo[1]]}"
    # puts "In the first position is: #{board[combo[2]]}"

    (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") ||
    (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
  end
end

def full?(board)
  board.all? do |square|
    square != " "
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "X"
      return "X"
    elsif board[won?(board)[0]] == "O"
      return "O"
    end
  else 
    return nil
  end
end

  # case board[won?(board)[0]]
  # when "X"
  #   return X
  # when "O"
  #   return O
  # else
  #   return nil
  # end

    
  # case board[won?(board)[0]]
  # when "X"
  #   return X
  # when "O"
  #   return O
  # else
  #   return nil
  # end


  # board.detect do |square|
  #   if board[square] == " "
  #     return false
  #   elsif board[square] != " "
  #     return true
  #   end
  # end
# end

#   WIN_COMBINATIONS.each do |combo|
#     if board[combo[0]] == " " || board[combo[1]] == " " || board[combo[2]] == " "
#       return false
#     elsif (board[combo[0]] != " " && board[combo[1]] != " " && board[combo[2]] != " ")
#       return true
#     end
#   end
# end

# board.each do |squares|
  #   puts squares
  #   if squares == " "
  #     return false
  #   elsif squares != " "
  #     return true
  #   end
  # end

  # board.each do |squares|
  #   if squares == " "
  #     false
  #   else
  #     true
  #   end
  # end
  # WIN_COMBINATIONS.each do |combo|
  #   if board[combo[0]] == " " || board[combo[1]] == " " || board[combo[2]] == " "
  #     return false
  #   elsif (board[combo[0]] != " " && board[combo[1]] != " " && board[combo[2]] != " ")
  #     return true
  #   end
  # end









