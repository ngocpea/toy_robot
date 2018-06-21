require 'pry'

module ToyRobot
attr_reader :robot
  class Table
    def initialize(width, length)
      @width = width
      @length = length
    end
    
    def valid_location?(east, north)
      east >= 0 && east < @width &&
      north >= 0 && north < @length
    end
    
    def place(east, north, facing)
     # return unless @table.valid_location?(east, north
      if valid_location?(east,north)
      robot = Robot.new(east, north, facing)
      end
    end 
  end

end

