class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    @name1 = name1
    @name2 = name2
    self.place_stones
    @valid_pos = (0..5).to_a + (7..12).to_a

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...@cups.length).each{|idx|
      if idx != 6 && idx != 13
        @cups[idx] = [:stone, :stone, :stone, :stone]
        
      else
        @cups[idx] = []
      end
    }
  end

  def valid_move?(start_pos)
    if !@valid_pos.include?(start_pos)
      raise "Invalid starting cup"
    end

    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end

  end

  def make_move(start_pos, current_player_name)
    num_of_stones = @cups[start_pos]
    @cups[start_pos] = []
    i = start_pos+1
    side = 1
    if start_pos.between?(7,12)
      side = 2
    end
    while num_of_stones.length > 0
      @cups[i] << num_of_stones.pop 
      side == 1 ? i=(i+1)%7 : i=(i+1)%14
    end
    self.render
    self.next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all?{|idx| @cups[idx].empty?} || (7..12).all?{|idx| @cups[idx].empty?}
  end

  def winner
    if @cups[6].length == @cups[13].length
      return :draw
    elsif @cups[6].length > @cups[13].length
      return @name1
    else
      return @name2
    end
  end
end