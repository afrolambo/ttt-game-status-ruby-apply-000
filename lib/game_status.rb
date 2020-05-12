# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # bottom_row
  [0,3,6], # left_column
  [1,4,7], # center_column
  [2,5,8], # right_column
  [0,4,8], # left_diagonal
  [6,4,2] # right_diagonal
]

#won method should accept board as an argument
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    win_in_1 = win_combo[0]
    win_in_2 = win_combo[1]
    win_in_3 = win_combo[2]

    position_1 = board[win_in_1]
    position_2 = board[win_in_2]
    position_3 = board[win_in_3]

    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_in_1)
      return win_combo
    end
  end
  return false
end

def full?(board)
  if board.any? {|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
   if !won?(board) && full?(board)
     return true
   elsif!full?(board) && !won?(board)
     return false
   else won?(board)
     return false
   end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
