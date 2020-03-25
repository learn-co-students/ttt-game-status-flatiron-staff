# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


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


def won?(board)
  WIN_COMBINATIONS.each do | combo |
  if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] != " "
    return combo
  end
  end
  false
end


def full?(board)
  board.detect do | position |
  if position == " " || position == "" || position == nil
    return false
  end
  end
  true
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  end
  false
end


def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  elsif full?(board) == false && won?(board) != false
    return true
  end
  false
end


def winner(board)
  win_positions = won?(board)
  if won?(board)
    return board[win_positions[0]]
  else
    return nil
  end
end
