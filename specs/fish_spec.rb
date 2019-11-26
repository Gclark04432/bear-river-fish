require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < Minitest::Test

  def test_fish_has_name
    fish = Fish.new("Freddy")
    assert_equal("Freddy", fish.name())
  end

end
