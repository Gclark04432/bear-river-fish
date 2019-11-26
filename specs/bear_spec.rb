require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name())
  end

end
