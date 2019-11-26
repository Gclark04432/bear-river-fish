require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../bear')
require_relative ('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon", [@fish, @fish, @fish])
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name())
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type())
  end

  def test_bear_stomach_starts_empty
    assert_equal(0, @bear.food_count())
  end

  def test_bear_can_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fish_count())
  end

  def test_bear_can_roar
    assert_equal("Roar!!", @bear.roar())
  end

  def test_can_river_tell_if_bear_is_hungry
    assert_equal(true, @river.is_bear_hungry(@bear))
  end

end
