# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
def won?(board)
  WIN_COMBINATIONS.each do |win|
    if win.all? {|position| board[position] == "X"}
      return win
    elsif win.all? {|position| board[position] == "O"}
      return win
    end
  end
  return false
end
def full?(board)
  board.all? { |index| index == "X" || index == "O"}
end
def draw?(board)
  if won?(board)
  elsif won?(board) == false && full?(board)
    return true
  end
end
def over?(board)
  if WIN_COMBINATIONS.any? { |win| win == won?(board) }

  end
end
