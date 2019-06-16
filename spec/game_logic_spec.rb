require './lib/game_logic'
require './lib/board'

RSpec.describe GameLogic do
    let(:board) { Board.new } 
    let(:game) { GameLogic.new('playerOne', 'playerTwo, board') }

    it "test initialize player one" do
       expect( game.player_one ).to eql('playerOne')
    end

    it "test initialize player two" do
       expect( game.player_two ).to eql('playerTwo')
    end

  describe "#valid_move?" do
  
    it "check if input is an not integer " do
      input = !input.to_i
      expect( game.valid_move?(input) ).to eql(false)
    end

    it "check if input is an integer " do
      input = input.to_i
      expect( game.valid_move?(input) ).to eql(true)
    end

    it "check if input is an integer from 1 -9" do
      input = [1,2,3,4,5,6,7,8,9]
      input.each do |a|  
      expect( game.valid_move?( a ) ).to eql(true)
      end
      
    end

    it "check if input is an not an integer from 1 -9" do
      input = [1,2,3,4,5,6,7,8,9]
      input.each do |a|  
      expect( game.valid_move?( !a ) ).to eql( false )
      end
    end

  end

  describe "#board_full?" do
    it "check if board is full" do
      expect( game.board_full? == false).to eql(board.post.any?{ |x| x.is_a?(Integer) })
    end

    it "check if board not full" do
      expect( game.board_full? == true).to eql(board.post.any?{ |x| x.is_a?(String) })
    end
  end
  
end