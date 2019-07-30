require './test/test_helper'

class EnigmaTest < MiniTest::Test

  def test_it_exist
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_create_random_num
    enigma = Enigma.new

    assert_instance_of String, enigma.random_num
    assert_equal 5, enigma.random_num.length
    assert_instance_of Integer, enigma.random_num.to_i
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
    enigma = Enigma.new
    Time.any_instance.stubs(:strftime).returns("040895")

    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_decryption_with_key_and_todays_date
    enigma = Enigma.new
    Time.any_instance.stubs(:strftime).returns("040895")

    expected = {
          decryption: "hello world",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.decrypt("keder ohulw", "02715")
  end

  def test_encryption_no_key_and_todays_date
    enigma = Enigma.new
    Time.any_instance.stubs(:strftime).returns("040895")
    Enigma.any_instance.stubs(:random_num).returns("02715")

    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: Time.now.strftime("%d%m%y")
          }

    assert_equal expected, enigma.encrypt("hello world")
  end

end
