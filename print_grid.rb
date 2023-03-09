require_relative 'primes'
require_relative 'build_initial_grid_line'
require_relative 'build_multiplication_table'

class PrintGrid
  def process(n)
    raise ArgumentError unless n

    primes = Primes.new.process((n+1)*(n+1)).first(n)

    grid = BuildInitialGridLine.new.process(primes)
    primes.each do |prime|
      BuildMultiplicationTable.new.process(
        prime, n, primes, grid
      )
    end
    return grid
  end
end
