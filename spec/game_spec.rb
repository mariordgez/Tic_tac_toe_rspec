require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  let(:games){Game.new}
  describe "#display_board" do
  it "Should display a board with the numbers from 1-9" do
  board=  " 1 | 2 | 3 \n" \
          "------------\n" \
          " 4 | 5 | 6 \n" \
          "------------\n" \
          " 7 | 8 | 9 \n"
  expect(games.display_board).to eql(board)
end
end

  describe "#input_to_index" do
  it "Should return the input number minus 1" do
    expect(games.input_to_index('5')).to eql(4)
end
end

describe '#move' do
it "Should change the board selected number with the player sign" do 
  games.move(0,"X")
  expect(games.board[0]).to eql('X')
end
end

describe '#position_taken?' do
it "Should check if position selected on board is already taken" do
games.move(0,"O")
expect(games.position_taken?(0)).to eql(true)

expect(games.position_taken?(1)).to eql(false)

end
end

describe '#valid_move?' do
it 'Should check if input is a number between 1-9 and is not taken by a player' do
games.move(1,'X')
expect(games.valid_move?(1)).to eql(false)
expect(games.valid_move?(-1)).to eql(false)
expect(games.valid_move?(3)).to eql(true)
end
end

describe "#turn_count" do
it "Should return the turn number based on the amount of selections made by the players" do
games.move(5,"X")
games.move(6,"O")
expect(games.turn_count).to eql(2)

end
end

describe "#current_player" do


it 'Current player is equal to player1 name when turn count is even' do
  games.player1.name="mario"
games.player2.name="dante"
  games.move(5,"X")
games.move(6,"O")
expect(games.current_player).to eql(games.player1.name)
end
it 'Current player is equal to player2 name when turn count is uneven' do
  games.player1.name="mario"
games.player2.name="dante"
  games.move(5,"X")
expect(games.current_player).to eql(games.player2.name)
end

end
describe "#other_player" do


it 'Other player is equal to player2 name when turn count is even' do
  games.player1.name="mario"
games.player2.name="dante"
  games.move(5,"X")
games.move(6,"O")
expect(games.other_player).to eql(games.player2.name)
end
it 'Other player is equal to player1 name when turn count is uneven' do
  games.player1.name="mario"
games.player2.name="dante"
  games.move(5,"X")
expect(games.other_player).to eql(games.player1.name)
end

end

describe "#current_player_sign" do


it 'Current player sign is equal to player1 sign when turn count is even' do
  games.player1.sign="X"
games.player2.sign="O"
  games.move(5,"X")
games.move(6,"O")
expect(games.current_player_sign).to eql(games.player1.sign)
end
it 'Current player sign is equal to player2 sign when turn count is uneven' do
  games.player1.sign="X"
games.player2.sign="O"
  games.move(5,"X")
expect(games.current_player_sign).to eql(games.player2.sign)
end

end

describe "#turn" do
it "Should display an updated board with the current player selection" do
  board=  " 1 | X | 3 \n" \
  "------------\n" \
  " 4 | 5 | 6 \n" \
  "------------\n" \
  " 7 | 8 | 9 \n"

expect(games.turn(1)).to eql(board)
end
end

describe "#contains_letter" do 
it "Checks if input contains a letter from a-z" do
string1="mario12345"
string2="13355"
expect(games.contains_letter(string1)).to eql(true)
expect(games.contains_letter(string2)).to eql(false)

end
end

describe "#choices" do

end
end