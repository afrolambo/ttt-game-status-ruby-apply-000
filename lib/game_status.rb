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
  if board == [" "," "," "," "," "," "," "," "," "]
    false
  elsif draw_board
    false
  else WIN_COMBINATIONS.each do |win_combination|
    win = []
      if win_combination == ["X","X","X"] || win_combination == ["O","O","O"]
          win_combination.each do |position|
            win.push ("#{position}")
          end
      puts "#{win} Wins!"
    end
  end
end
