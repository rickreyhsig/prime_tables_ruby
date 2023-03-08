require_relative '../build_initial_grid_line'
require 'test/unit'

class TestBuildInitialGridLine < Test::Unit::TestCase
  SUBJECT = BuildInitialGridLine.new

  def test_arguments
    assert_raise ArgumentError do
      SUBJECT.process(nil)
    end
  end

  def test_response
    response = "|       |     2 |     3 |     5 |\n"
    assert_equal( response, SUBJECT.process([2,3,5]) )
    response = "|       |     2 |     3 |     5 |     7 |    11 |    13 |    17 |    19 |\n"
    assert_equal( response, SUBJECT.process([2,3,5,7,11,13,17,19]) )
  end
end
