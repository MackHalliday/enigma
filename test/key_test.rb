require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'

class KeyTest < MiniTest::Test

  def setup
    @key_1 = Key.new
  end

  def test_it_exist

    assert_instance_of Key, @key_1
  end

  def test_attributes_of_key

    assert_equal ({}), @key_1.keys
  end

  def test_random_five_digit_number

    assert_equal "10000", @key_1.random_num
  end

  def test_create_pairs

    assert_equal [10, 04, 40, 02], @key_1.create_num_pairs
  end

  def test_pairs_can_be_joined

    assert_equal [10, 04, 40, 02], @key_1.join_pairs_nums_together
  end

  def test_set_values_as_keys

    assert_equal 100, @key_1.set_num_values_as_keys
  end

  def test_can_update_key_attribute
    @key_1.set_key_values

    assert_equal 1000, @key_1.keys
  end
end
