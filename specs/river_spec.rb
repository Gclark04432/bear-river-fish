require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < Minitest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

end
