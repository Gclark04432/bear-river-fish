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
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

  def test_river_starts_with_three_fish
    assert_equal(3, @river.fish_count())
  end

end
