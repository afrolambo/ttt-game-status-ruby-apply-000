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
  win_combo = []
  WIN_COMBINATIONS.each do |w_combo|
    if board[w_combo[0]] == "X" && board[w_combo[1]] == "X" && board[w_combo[2]] == "X"
      true
      w_combo.each {|i| [i].to_ary}
        win_combo.push("#{i}")
      end
    end
    return win_combo
  end
end

def draw?(board)
  if board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    true
  end
end
