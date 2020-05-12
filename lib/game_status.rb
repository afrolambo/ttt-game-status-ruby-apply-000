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
  WIN_COMBINATIONS.any do |win_combination|
    win = []
      unless board[win_combination] == ["X","X","X"] || board[win_combination] == ["O","O","O"]
        false
      else win_combination.each do |index|
            win.push("#{index}")
    end
  end
end
puts "#{win} Wins!"
puts win.to_i
end
