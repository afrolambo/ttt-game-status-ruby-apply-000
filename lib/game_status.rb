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
  if draw? || board = [" "," "," "," "," "," "," "," "," "]
  WIN_COMBINATIONS.each do |w_c|
    def w_c(board = "X")
    # load the value of the board at win_index_1
    if board[w_c[0]] == "X" && board[w_c[1]] == "X" && board[w_c[2]] == "X"
      w_c.each do |i|
        win_combo = []
      win_combo.push(i)
      true
    end
  end
  puts "#{win_combo} wins"
end
end

def draw?(board)
  if board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    true
  end
end
end
