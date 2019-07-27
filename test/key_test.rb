require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'
require 'mocha/minitest'

class KeyTest < MiniTest::Test

  def setup
    #five digit randomly given
    @key_1 = Key.new
    @key_1.stubs(:five_digit).returns("01221")

    #five digit provided
    @key_2 = Key.new("00234")
  end

  def test_it_exist

    assert_instance_of Key, @key_1
    assert_instance_of Key, @key_2
  end

  def test_attributes_of_key
    #Testing attribute or testing stub?
    @key_1.stubs(:five_digit).returns("01221")

    assert_equal "01221", @key_1.five_digit
    assert_equal "00234", @key_2.five_digit
  end

  def test_random_five_digit_number
    #Testing attribute or testing stub?

    assert_equal 5, @key_1.random_num.length
    assert_equal "01221", @key_1.random_num
  end
  #
  def test_create_pairs
    # skip
      key_1 = Key.new


    expected_1 = [["0", "1"], ["1", "2"], ["2", "2"], ["2", "1"]]
    expected_2 = [["0", "0"], ["0", "2"], ["2", "3"], ["3", "4"]]

    assert_equal expected_1, @key_1.create_num_pairs
    assert_equal expected_2, @key_2.create_num_pairs
  end
  #
  # def test_pairs_can_be_joined
  #   skip
  #   expected = ["01","12", "22", "21"]
  #   assert_equal expected, @key_1.join_pairs_nums_together
  # end
  #
  # def test_set_values_as_keys
  #   # skip
  #   expected = {:a => "01",:b => "12", :c => "22", :d => "21"}
  #   assert_equal expected, @key_1.set_num_values_as_keys
  # end

end
