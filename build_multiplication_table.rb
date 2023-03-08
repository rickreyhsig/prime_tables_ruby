require_relative 'spaced_string'

class BuildMultiplicationTable
  def process(prime, n, primes, grid)
    raise ArgumentError unless prime && n && primes && grid
    _prime = prime
    idx = 0
    (n+1).times do
      grid << SpacedString.new.process(prime)
      prime = _prime*primes[idx] if idx < primes.length
      idx += 1
    end
    grid << "|\n"
  end
end
