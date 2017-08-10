require_relative 'parse'
require 'pry'

RSpec.describe Parse do 
  let(:input) { "input.txt" }
  let(:raw_instructions) do
    "41 \n" +
    "RT 90\n" +
    "FD 10\n" +
    "RT 45\n" +
    "FD 5\n" +
    "REPEAT 2 [ RT 90 FD 15 ]\n" +
    "RT 90\n" +
    "FD 5\n" +
    "RT 45\n" +
    "FD 9" 
  end 

  let(:parser) { described_class.new(input) }
  let(:expected_board) do 
    str = ""
    41.times do 
      41.times do 
        str += "."
      end 
    str += "\n"
    end 
    str
  end

  describe Parse do 
    it 'ingests the file' do 
      expect(parser.input).to eq raw_instructions
    end 
    it 'parses the board size' do 
      expect(parser.board_size).to eq 41
    end 
    it 'represents the board as a string' do 
      expect(parser.board).to eq expected_board
    end 
  end 
end 