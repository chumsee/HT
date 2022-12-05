# frozen_string_literal: true

class Head
    
  attr_accessor :side, :minutes, :history

  def initialize
    @side = nil
    @minutes = 0
    @history = []
  end

  def look(side, minutes)
    if @history.empty?
        @history << [side, minutes]
    else
        @history << [side, history[-1][1] + minutes]
    end
    @side = side
    @minutes = @history[-1][1]
  end

  def timeline
    @history
  end
end
