require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require './lib/shift'
require './lib/key'
require 'mocha/minitest'
require 'pry'


class ShiftTest < MiniTest::Test

  def setup
    @shift_1 = Shift.new
    @offset_1 = Offset.new
    Offset.any_instance.stubs(:todays_date).returns("260719")
  end

  def test_it_exist

    assert_instance_of Shift, @shift_1
  end

  def test_it_has_attributes
    offset_value = {:a=>"6", :b=>"9", :c=>"6", :d=>"1"}
    #@offset_1.set_key_values

    assert_equal offset_value, @shift_1.offset
  end
end
