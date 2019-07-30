require './test/test_helper'

class KeyTest < MiniTest::Test

  def setup
     @key_1 = Key.new("00234")
     @key_2 = Key.new("01221")
  end

  def test_it_exist
    assert_instance_of Key, @key_1
  end

  def test_attributes_of_key


    assert_equal "00234", @key_1.key
    assert_equal 5, @key_1.key.length
    assert_instance_of String, @key_1.key
  end

  def test_it_can_create_pairs


    expected_1 = [["0", "0"], ["0", "2"], ["2", "3"], ["3", "4"]]
    expected_2 = [["0", "1"], ["1", "2"], ["2", "2"], ["2", "1"]]

    assert_equal expected_1, @key_1.create_pairs
    assert_equal expected_2, @key_2.create_pairs
  end

  def test_it_can_join_pairs


    expected_1 = ["00", "02", "23", "34"]
    expected_2 = ["01", "12", "22", "21"]

    assert_equal expected_1, @key_1.join_pairs
    assert_equal expected_2, @key_2.join_pairs
  end

  def test_it_can_create_key_values

    expected_1 = {:a=>"00", :b=>"02", :c=>"23", :d=>"34"}
    expected_2 = {:a=>"01", :b=>"12", :c=>"22", :d=>"21"}

    assert_equal expected_1, @key_1.get_key_values
    assert_equal expected_2, @key_2.get_key_values
  end
end
