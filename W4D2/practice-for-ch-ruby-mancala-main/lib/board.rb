class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times { @cups[i] << :stone }
      end
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 12
    raise 'Starting cup is empty' if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
    held = @cups[start_pos]
    @cups[start_pos] = []

    pos = start_pos
    until held.empty?
      pos += 1
      pos = 0 if pos > 13
      if pos == 6
        @cups[pos] << held.pop if current_player_name == @name1
      elsif pos == 13
        @cups[pos] << held.pop if current_player_name == @name2
      else
        @cups[pos] << held.pop
      end
    end
    render
    next_turn(pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
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
    return true if @cups[0..5].all? { |cup| cup.empty?} || @cups[7..12].all? { |cup| cup.empty?}
    false
  end

  def winner
    if @cups[6].count == @cups[13].count
      :draw
    else
      if @cups[6].count > @cups[13].count
        @name1
      else
        @name2
      end
    end
  end
end