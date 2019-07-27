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


end
