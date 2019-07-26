require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'

class KeyTest < MiniTest::Test

  def setup
    @key_1 = Key.new
  end

  def test_it_exist

    assert_instance_of Key, @key_1
  end
end
