require_relative '../primes'
require 'test/unit'

class TestPrimes < Test::Unit::TestCase
  SUBJECT = Primes.new

  def test_arguments
    assert_raise ArgumentError do
      SUBJECT.process(nil)
    end

    assert_raise 'N should be at least 1' do
      SUBJECT.process(0)
    end
  end

  def test_response
    assert_equal( [2,3,5], SUBJECT.process(5) )
    assert_equal( [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], SUBJECT.process(30) )
  end
end
