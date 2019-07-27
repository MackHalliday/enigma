require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'
require 'pry'

class OffsetTest < MiniTest::Test

  def setup
    @offset_1 = Offset.new
  end

  def test_it_exist

    assert_instance_of Offset, @offset_1
  end

  def test_it_can_generate_date

    assert_equal "260719", @offset_1.todays_date
  end

  def test_it_can_square_number

    assert_equal 67974396961, @offset_1.square_number
  end

  def test_can_return_last_four_digits

    assert_equal ["6", "9", "6", "1"], @offset_1.last_four_digits
  end

  def test_set_values_as_keys
    @offset_1.set_key_values

    assert_equal 10000, @offset_1.keys
  end
end
