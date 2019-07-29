require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'
require 'date'
require 'pry'
require './test/test_helper'

class EnigmaTest < MiniTest::Test

  def test_it_exist
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encryption_with_key_and_date
    enigma = Enigma.new

    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
            }

    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_decryption_with_key_and_date
    enigma = Enigma.new

    expected = {
        decryption: "hello world",
        key: "02715",
        date: "040895"
        }

    assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_encryption_with_key_and_todays_date
    skip
    enigma = Enigma.new
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_decryption_with_key_and_todays_date
    skip
    enigma = Enigma.new
    expected = {
          decryption: "hello world",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_encryption_no_key_and_todays_date
    skip
    enigma = Enigma.new
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.encrypt("hello world")
  end

end
