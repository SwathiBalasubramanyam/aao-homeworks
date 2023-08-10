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
    
    idx = start_pos
    while num_of_stones.length > 0
      idx = idx+1
      idx = 0 if idx > 13
      if idx == 6
        @cups[6] << num_of_stones.pop if current_player_name == @name1
      elsif idx == 13
        @cups[13] << num_of_stones.pop if current_player_name == @name2
      else
        @cups[idx] << num_of_stones.pop
      end
    end
    self.render
    self.next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      # ended on store -- get to choose where to start again
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      # ended on empty cup -- switches players' turns
      :switch
    else
      # ended on cup with stones in it -- automatically starts there
      ending_cup_idx
    end
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