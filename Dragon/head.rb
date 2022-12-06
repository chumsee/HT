# frozen_string_literal: true

class Head
    
  attr_accessor :minutes, :history

  def initialize
    @minutes = 0
    @history = [[nil, @minutes]]
  end

  def look(side, minutes)
    @history << [side, history.last[1] + minutes]
    @minutes = @history.last[1]
  end
end
