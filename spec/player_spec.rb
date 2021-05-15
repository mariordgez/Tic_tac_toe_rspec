require_relative '../lib/game'
require_relative '../lib/player'

describe Player do
  describe '#choice' do
    let(:player) { Player.new('mario', 'x') }
    it 'Should add the input number into the array selections' do
      player.choice(8)
      expect(player.choice(7)).to eql([8, 7])
    end
  end
end
