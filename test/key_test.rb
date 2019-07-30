require './test/test_helper'

class KeyTest < MiniTest::Test

  def setup
     @key_given = Key.new("00234")
     @key_not_given = Key.new
  end

  def test_it_exist
    assert_instance_of Key, @key_given
    assert_instance_of Key, @key_not_given
  end

  def test_attributes_of_key


    assert_equal "00234", @key_given.key
    assert_equal 5, @key_not_given.key.length
    assert_instance_of String, @key_not_given.key
  end

  def test_it_can_create_pairs
    key_not_given = Key.new("01221")
    #key_not_given.stubs(:key).returns("01221")
    #key_not_given = Key.any_instance.stubs(:random_num).returns("01221")

    expected_1 = [["0", "0"], ["0", "2"], ["2", "3"], ["3", "4"]]
    expected_2 = [["0", "1"], ["1", "2"], ["2", "2"], ["2", "1"]]

    assert_equal expected_1, @key_given.create_pairs
    assert_equal expected_2, key_not_given.create_pairs
  end

  def test_it_can_join_pairs
    key_not_given = Key.new("01221")

    expected_1 = ["00", "02", "23", "34"]
    expected_2 = ["01", "12", "22", "21"]

    assert_equal expected_1, @key_given.join_pairs
    assert_equal expected_2, key_not_given.join_pairs
  end

  def test_it_can_create_key_values
    key_not_given = Key.new("01221")

    expected_1 = {:a=>"00", :b=>"02", :c=>"23", :d=>"34"}
    expected_2 = {:a=>"01", :b=>"12", :c=>"22", :d=>"21"}

    assert_equal expected_1, @key_given.get_key_values
    assert_equal expected_2, key_not_given.get_key_values
  end
end
