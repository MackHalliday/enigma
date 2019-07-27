require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'
require 'mocha/minitest'

class KeyTest < MiniTest::Test

  def setup
    @key_1 = Key.new
    @key_2 = Key.new("00234")

    Key.any_instance.stubs(:random_num).returns("01221")
  end

  def test_it_exist

    assert_instance_of Key, @key_1
  end

  def test_attributes_of_key

    #assert_equal 10000, @key_1.five_digit
    assert_equal ("00234"), @key_2.five_digit
  end

  def test_random_five_digit_number
    # skip
    assert_equal 5, @key_1.random_num.length
    assert_equal "01221", @key_1.random_num
  end

  def test_create_pairs
    # skip
    @key_1.stubs(:five_digit).returns("01221")

    expected = [["0", "1"], ["1", "2"], ["2", "2"], ["2", "1"]]
    assert_equal expected, @key_1.create_num_pairs
  end

  def test_pairs_can_be_joined
    # skip
    expected = ["01","12", "22", "21"]
    assert_equal expected, @key_1.join_pairs_nums_together
  end

  def test_set_values_as_keys
    # skip
    expected = {:a => "01",:b => "12", :c => "22", :d => "21"}
    assert_equal expected, @key_1.set_num_values_as_keys
  end

end
