require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'
require 'mocha/minitest'

class KeyTest < MiniTest::Test

  def setup

     @key_given = Key.new("00234")

     #@key_not_given = Key.new
     #@key_not_give.stubs(:random_number).returns("01221")

  end

  def test_it_exist

    assert_instance_of Key, @key_given
    #assert_instance_of Key, @key_not_given
  end

  def test_attributes_of_key

    assert_equal "00234", @key_given.key
    #assert_equal "01221", @key_not_given.key
  end
end
