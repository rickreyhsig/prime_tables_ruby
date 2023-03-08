require_relative '../primes'
require 'test/unit'

class TestPrimes < Test::Unit::TestCase

  def test_arguments
    assert_raise ArgumentError do
      Primes.new.process(nil)
    end

    assert_raise 'N should be at least 1' do
      Primes.new.process(0)
    end
  end

  def test_response
    assert_equal( [2,3,5], Primes.new.process(5) )
    assert_equal( [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], Primes.new.process(30) )
  end
end
