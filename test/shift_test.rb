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

  def test_it_can_assign_key_letters
    # skip
    expected = {:a => ["h", "o", "r"],
                :b => ["e", " ", "l"],
                :c => ["l", "w", "d"],
                :d => ["l", "o"]
                }

    assert_equal expected, @shift_1.assign_key_letters
  end

  def test_it_can_map_new_letter_values_by_key
  expected = {:a=>{"a"=>"d", "b"=>"e", "c"=>"f", "d"=>"g", "e"=>"h", "f"=>"i", "g"=>"j", "h"=>"k", "i"=>"l", "j"=>"m", "k"=>"n", "l"=>"o", "m"=>"p", "n"=>"q", "o"=>"r", "p"=>"s", "q"=>"t", "r"=>"u", "s"=>"v", "t"=>"w", "u"=>"x", "v"=>"y", "w"=>"z", "x"=>" ", "y"=>"a", "z"=>"b", " "=>"c"},
              :b=>{"a"=>"a", "b"=>"b", "c"=>"c", "d"=>"d", "e"=>"e", "f"=>"f", "g"=>"g", "h"=>"h", "i"=>"i", "j"=>"j", "k"=>"k", "l"=>"l", "m"=>"m", "n"=>"n", "o"=>"o", "p"=>"p", "q"=>"q", "r"=>"r", "s"=>"s", "t"=>"t", "u"=>"u", "v"=>"v", "w"=>"w", "x"=>"x", "y"=>"y", "z"=>"z", " "=>" "},
              :c=>{"a"=>"t", "b"=>"u", "c"=>"v", "d"=>"w", "e"=>"x", "f"=>"y", "g"=>"z", "h"=>" ", "i"=>"a", "j"=>"b", "k"=>"c", "l"=>"d", "m"=>"e", "n"=>"f", "o"=>"g", "p"=>"h", "q"=>"i","r"=>"j", "s"=>"k", "t"=>"l", "u"=>"m", "v"=>"n", "w"=>"o", "x"=>"p", "y"=>"q", "z"=>"r", " "=>"s"},
              :d=>{"a"=>"u", "b"=>"v", "c"=>"w", "d"=>"x", "e"=>"y", "f"=>"z", "g"=>" ", "h"=>"a", "i"=>"b", "j"=>"c", "k"=>"d", "l"=>"e", "m"=>"f", "n"=>"g", "o"=>"h", "p"=>"i", "q"=>"j", "r"=>"k", "s"=>"l", "t"=>"m", "u"=>"n", "v"=>"o", "w"=>"p", "x"=>"q", "y"=>"r", "z"=>"s", " "=>"t"}
              }
    assert_equal expected, @shift_1.map_new_letter_values
  end

  def test_it_can_shift_letter_according_to_keys_shift_values
    skip
    expected = {:a => [],
                :b => [],
                :c => [],
                :d => []
                }
    
  end
end
