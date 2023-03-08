require_relative '../spaced_string'
require 'test/unit'

class TestSpacedString < Test::Unit::TestCase
  SUBJECT = SpacedString.new

  def test_arguments
    assert_raise ArgumentError do
      SUBJECT.process(nil)
    end
  end

  def test_response
    response = '|     5 '
    assert_equal( response, SUBJECT.process(5) )

    response = '|    25 '
    assert_equal( response, SUBJECT.process(25) )

    response = '|   257 '
    assert_equal( response, SUBJECT.process(257) )

    response = '|  2579 '
    assert_equal( response, SUBJECT.process(2579) )

    response = '| 25791 '
    assert_equal( response, SUBJECT.process(25791) )
  end
end
