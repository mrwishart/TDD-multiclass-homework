class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count()
    return @stomach.count 
  end

end
