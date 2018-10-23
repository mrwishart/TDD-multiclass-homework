require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup

    fish1 = Fish.new("Alan")
    fish2 = Fish.new("Bob")
    fish3 = Fish.new("Frank")
    fish4 = Fish.new("Dave")
    fish5 = Fish.new("Robert")

    @fishes = [fish1, fish2, fish3, fish4, fish5]

    @river1 = River.new("Amazon", @fishes)

  end

  def test_river_name

    expected = "Amazon"
    actual = @river1.name

    assert_equal(expected, actual)

  end

  def test_fish_count

    expected = 5
    actual = @river1.fish_count

    assert_equal(expected, actual)

  end

  def test_lose_fish__fish_count

    expected = 4
    @river1.lose_fish
    actual = @river1.fish_count

    assert_equal(expected, actual)

  end

  def test_lose_fish__array_comparison

    # Expected: First 4 fishes
    expected = @fishes[0, 4]
    @river1.lose_fish
    actual = @river1.fishes

    assert_equal(expected, actual)

  end

end
