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
it "Should change the board slected number with the player sign" do 
  games.move(0,"X")
  expect(games.board[0]).to eql('X')
end
end


end