require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Bob")

  end

  def test_fish_name

    expected = "Bob"
    actual = @fish1.name

    assert_equal(expected, actual)

  end

end
