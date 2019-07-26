require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'pry'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exist

    assert_instance_of Enigma, @enigma
  end

  def test_encryption_method

    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
            }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end
end
