# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|

  if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
    return combo

    end
  end
  false
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
  else !full?(board) && !won?(board)
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

def winner?(board)
 winner(board) == "X" || winner(board) == "O"
   puts "You've Won #{winner(board)}"
 end
end
