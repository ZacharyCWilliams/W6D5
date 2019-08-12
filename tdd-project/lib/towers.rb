class Towers
  
  def initialize
        @towers = [[3,2,1],[],[]]
        @moves = 0
  end

  def full?(towers) #pass towers
    towers.each_with_index do |tower, idx|
      return true if idx != 0 && tower.length == 3
    end
    false
  end

  def move(to_tower, from_tower) ## array indexes
    if from_tower != to_tower
      if to_tower.empty? || (to_tower[-1] > from_tower[-1])
        return true
      end
    end
    false
  end

  def gets_move

  end

  def win?
    self.full?(@towers)
  end

  def print

  end

  attr_reader :towers, :moves
end
  