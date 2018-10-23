class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_count
    return @fishes.count
  end

  def lose_fish
    @fishes.pop
  end

end
