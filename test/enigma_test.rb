require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'pry'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma_1 = Enigma.new
  end

  def test_it_exist

    assert_equal Enigma, @enigma_1
  end
end
