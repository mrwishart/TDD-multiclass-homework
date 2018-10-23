require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class BearTest < MiniTest::Test

  def setup

    fish1 = Fish.new("Alan")
    fish2 = Fish.new("Frank")
    fish3 = Fish.new("Abby")
    @fish4 = Fish.new("Robert")
    @fish5 = Fish.new("Tom")

    fishes1 = [fish1, fish2, fish3, @fish4, @fish5]
    fishes2 = [@fish5]

    @river1 = River.new("Muddy", fishes1)
    @river2 = River.new("Empty", fishes2)

    @bear1 = Bear.new("Yogi")

  end

  def test_bear_name

    expected = "Yogi"
    actual = @bear1.name

    assert_equal(expected, actual)

  end

  def test_bear_food_count

    expected = 0
    actual = @bear1.food_count()

    assert_equal(expected, actual)

  end

  def test_bear_eat_fish__food_count

    expected = 1
    @bear1.eat(@river1)
    actual = @bear1.food_count

    assert_equal(expected, actual)

  end

  def test_bear_eat_fish__stomach_contents

    expected_food_count = 2
    expected_stomach = [@fish5, @fish4]

    @bear1.eat(@river1)
    @bear1.eat(@river1)

    actual_food_count = @bear1.food_count
    actual_stomach = @bear1.stomach

    assert_equal(expected_food_count, actual_food_count)
    assert_equal(expected_stomach, actual_stomach)

  end

  def test_bear_tries_to_eat_too_much

    expected_food_count = 1
    expected_fish_count = 0

    @bear1.eat(@river2)
    @bear1.eat(@river2)

    actual_food_count = @bear1.food_count
    actual_fish_count = @river2.fish_count

    assert_equal(expected_food_count, actual_food_count)
    assert_equal(expected_fish_count, actual_fish_count)

  end

end
