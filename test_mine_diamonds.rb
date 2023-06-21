require 'minitest/autorun'
require_relative 'mine_diamonds'

class TestMineDiamonds < MiniTest::Test

  def test_mine_diamonds
    # test empty string
    input = ""
    assert_output("Output: 0\nYou've mined 0 diamonds\n") {mine_diamonds(input)}

    # test string without diamonds '<>'
    input = "test_diamonds"
    assert_output("Output: 0\nYou've mined 0 diamonds\n") {mine_diamonds(input)}

    # test one diamond without sand '.'
    input = "<>"
    assert_output("Output: 1\nYou've mined 1 diamonds\n") {mine_diamonds(input)}

    # test diamonds and sands
    input = "<<.>.>"
    assert_output("Output: 2\nYou've mined 2 diamonds\n") {mine_diamonds(input)}

    #test with other characters
    input = "5%6^<<<<.<>.>>>rtf"
    assert_output("Output: 4\nYou've mined 4 diamonds\n") {mine_diamonds(input)}

    #test with multiple diamonds
    input = "<.<<.<<<...>.>>.>>>"
    assert_output("Output: 6\nYou've mined 6 diamonds\n") {mine_diamonds(input)}

    #test complex string
    input = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
    assert_output("Output: 11\nYou've mined 11 diamonds\n") {mine_diamonds(input)}
  end
end
