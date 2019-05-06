class TicTacToe
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index
    input = gets.chomp.to_i - 1
    until input.is_a?(Integer) && input <= 9 && input >= 1
      input_to_index
    end
  end

  end

  def move(index, token = 'X')
    @board[index] = token
  end

  def position_taken?(index)
    @board[index] != " "
  end

  def valid_move?(index)
    @board[index] && !position_taken?
  end

  def turn_count
    @board.select { |pos| pos != " " }.count
  end

  def current_player
    (turn_count + 1) % 2 == 0 ? 'O' : 'X'
  end

  def turn
    puts "Please input a number 1 - 9"
    input = input_to_index
    unless valid_move?(input)
      move(input, current_player)
    end
  end

end
