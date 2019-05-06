require_relative 'tic_tac_toe'

tic = TicTacToe.new

tic.display_board
tic.input_to_index("1")

tic.turn
tic.display_board