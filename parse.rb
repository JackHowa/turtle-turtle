
class Parse 
  attr_reader :input, :board_size

  def initialize(filename)
    @input = File.read(filename)
    @board_size = @input.split("\n").shift.to_i
  end
  def board 
    "".tap do |str|
      board_size.times do 
        board_size.times do 
          str << "."
        end 
      str << "\n"
      end
    end 
  end

end 