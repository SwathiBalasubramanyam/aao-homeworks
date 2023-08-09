class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if !self.game_over
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
  end

  def add_random_color
    added_color = false
    while !added_color
      color = COLORS.sample
      if !self.seq.include?(color)
        self.seq << color
        added_color = true
      end
    end
  end

  def round_success_message
  end

  def game_over_message
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end