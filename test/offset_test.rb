require './test/test_helper'

class OffsetTest < MiniTest::Test

  def setup
    @offset_1 = Offset.new("260719")
  end

  def test_it_exist
    assert_instance_of Offset, @offset_1
  end


  def test_it_can_square_number
    assert_equal 67974396961, @offset_1.square_number
  end

  def test_can_return_last_digits
    assert_equal ["6", "9", "6", "1"], @offset_1.last_digits
  end

  def test_set_values_as_keys
    expected = {:a=>"6", :b=>"9", :c=>"6", :d=>"1"}

    assert_equal expected, @offset_1.get_key_values
  end
end
