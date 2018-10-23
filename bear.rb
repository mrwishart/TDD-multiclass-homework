class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count()
    return @stomach.count
  end

  def eat(river)
    @stomach << river.fishes.last
    river.lose_fish
  end

end
