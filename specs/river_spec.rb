require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../river')
require_relative('../fish')
require_relative('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < Minitest::Test

  def setup
    @river = River.new("Amazon", [@fish, @fish, @fish])
    @fish = Fish.new("Freddy")
    @bear = Bear.new("Baloo", "Animated")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

  def test_river_starts_with_three_fish
    assert_equal(3, @river.fish_count())
  end

  def test_is_bear_hungry_enough_to_give_fish
    assert_equal(0, @bear.food_count())
  end

  def test_will_river_give_fish_to_hungry_bear
    @river.feed_bear_if_hungry(@bear)
    assert_equal(1, @bear.food_count)
    assert_equal(2, @river.fish_count())
  end

  def test_will_river_refuse_to_give_fish_to_bear_not_hungry
    bear = Bear.new("Baloo", "Animated")
    bear.stomach.push("Nemo", "Dory")
    @river.feed_bear_if_hungry(bear)
    assert_equal(2, bear.food_count)
    assert_equal(3, @river.fish_count())
  end

end
