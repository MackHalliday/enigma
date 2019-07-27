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
    #assert_instance_of Key, @key_2
  end

  def test_attributes_of_key
    #Testing attribute or testing stub?

    assert_equal "01221", @key_1.five_digit
    #assert_equal "00234", @key_2.five_digit
  end
