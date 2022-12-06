# frozen_string_literal: true

class Head
  attr_reader :minutes, :history

  def initialize
    @minutes = 0
    @history = [[nil, @minutes]]
  end

  def look(side, minutes)
    @history << [side, history.last.last + minutes]
    @minutes = @history.last.last
  end

  def direction_by_minute(current_minute)
    (@history.bsearch { |x| x.last >= current_minute }).first
  end
end
