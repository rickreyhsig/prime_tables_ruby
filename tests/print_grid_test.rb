require_relative '../print_grid'
require 'test/unit'

class TestPrintGrid < Test::Unit::TestCase
  SUBJECT = PrintGrid.new

  def test_arguments
    assert_raise ArgumentError do
      SUBJECT.process(nil)
    end
  end

  def test_response
    grid = "|       |     2 |\n"\
           "|     2 |     4 |\n"
    assert_equal( grid, SUBJECT.process(1) )

    grid = "|       |     2 |     3 |\n"\
           "|     2 |     4 |     6 |\n"\
           "|     3 |     6 |     9 |\n"
    assert_equal( grid, SUBJECT.process(2) )

    grid = "|       |     2 |     3 |     5 |\n"\
           "|     2 |     4 |     6 |    10 |\n"\
           "|     3 |     6 |     9 |    15 |\n"\
           "|     5 |    10 |    15 |    25 |\n"
    assert_equal( grid, SUBJECT.process(3) )

    grid = "|       |     2 |     3 |     5 |     7 |\n"\
           "|     2 |     4 |     6 |    10 |    14 |\n"\
           "|     3 |     6 |     9 |    15 |    21 |\n"\
           "|     5 |    10 |    15 |    25 |    35 |\n"\
           "|     7 |    14 |    21 |    35 |    49 |\n"
    assert_equal( grid, SUBJECT.process(4) )
  end
end
