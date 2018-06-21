require 'pry'
module ToyRobot
  class Robot
    DIRECTIONS = [ 'NORTH', 'EAST', 'SOUTH', 'WEST' ]
    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    def move
      case @direction
      when 'NORTH' then move_north
      when 'SOUTH' then move_south
      when 'EAST' then move_east
      when 'WEST' then move_west
      end  
    end

    def move_east
       @east += 1
    end

    def move_west
      @east -= 1
    end
    
    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end

    def turn_left
      @direction = DIRECTIONS[DIRECTIONS.index(@direction) - 1 ]
    end

    def turn_right
      index = DIRECTIONS.index(@direction)  
      @direction = DIRECTIONS.rotate(1)[index]
    end

    # private method to consolidate turn_left and turn_right method


  end
end

