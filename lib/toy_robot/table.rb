require 'pry'

require_relative 'robot'

module ToyRobot
attr_reader :robot
  class Table
    def initialize(width, length)
      @width = width
      @length = length
    end
    
    def valid_location?(east, north)
      (0...@width).cover?(east) &&
      (0...@length).cover?(north)
    end
 
    def place(east, north, facing)
      return unless @table.valid_location?(east, north)

      @robot = Robot.new(east, north, facing)
    end

binding.pry
  end
end
