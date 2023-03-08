require_relative '../build_multiplication_table'
require 'test/unit'

class TestBuildMultiplicationTable < Test::Unit::TestCase
  SUBJECT = BuildMultiplicationTable.new

  def test_arguments
    assert_raise ArgumentError do
      SUBJECT.process(nil)
    end
  end

  def test_response
    response = "|       |     2 |\n|     2 |     4 |\n"
    assert_equal( response, SUBJECT.process(2, 1, [2], "|       |     2 |\n") )

    response = "|       |     2 |     3 |\n|     2 |     4 |     6 |\n"
    assert_equal( response, SUBJECT.process(2, 2, [2, 3], "|       |     2 |     3 |\n") )

    response = "|       |     2 |     3 |\n|     3 |     6 |     9 |\n"
    assert_equal( response, SUBJECT.process(3, 2, [2, 3], "|       |     2 |     3 |\n") )
  end
end
