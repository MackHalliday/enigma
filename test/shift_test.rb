require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/shift'
require './lib/key'
require 'mocha/minitest'
require 'pry'
require './test/test_helper'


class ShiftTest < MiniTest::Test

  def setup
    @shift_1 = Shift.new("hello world", {:a=>"02", :b=>"27", :c=>"71", :d=>"15"}, {:a=>"1", :b=>"0", :c=>"2", :d=>"5"})

  end

  def test_it_exist

    assert_instance_of Shift, @shift_1
  end

  def test_it_has_attributes

    key_value = {:a=>"02", :b=>"27", :c=>"71", :d=>"15"}
    offset_value = {:a=>"1", :b=>"0", :c=>"2", :d=>"5"}
    message = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]

    assert_equal message, @shift_1.message
    assert_equal key_value, @shift_1.key_values
    assert_equal offset_value, @shift_1.offset_values
  end

  def test_it_can_create_final_key
    expected = {:a=>03, :b=>27, :c=>73, :d=>20}

    assert_equal expected, @shift_1.create_final_key
  end
end
