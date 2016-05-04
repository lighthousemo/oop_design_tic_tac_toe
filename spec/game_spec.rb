require_relative 'spec_helper'
# Example of test stubs
describe Game do

  describe "#next_player" do

    it "returns the 2nd player if current player is 1st player" do
      game = Game.new
      expect(game.next_player).to eql game.player2
    end
    it "returns the 1st player if current player is 2nd player" do
      game = Game.new
      expect(game).to receive(:current_player).and_return(game.player2)
      
      expect(game.next_player).to eql game.player1
    end
  end

end