# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
].freeze

def won?(board)
  WIN_COMBINATIONS.find do |combo|
    combo.all? { |idx| board[idx] == 'X' } || combo.all? { |idx| board[idx] == 'O' }
  end
end

def full?(board)
  board.all? { |space| space.include?('X') || space.include?('O') }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  return nil if draw?(board) || !over?(board)

  winning_first_space = won?(board)[0]
  board[winning_first_space].strip
end
