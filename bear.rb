class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.count
  end

  def eat(river)
    #Check river has fish to eat
    if river.fish_count != 0
      #Take last fish in river into stomach
      @stomach << river.fishes.last
      #Take last fish out of river
      river.lose_fish
    end

  end

  def roar
    return "Rarr. I guess"
  end

  def still_hungry?
    full_stomach = 3
    return food_count() < full_stomach
  end

end
