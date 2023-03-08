require_relative 'spaced_string'

class BuildInitialGridLine
  def process(primes)
    raise ArgumentError unless primes && primes.class == Array
    grid = "|       "
    primes.each { |prime| grid << SpacedString.new.process(prime) }
    grid << "|\n"
    return grid
  end
end