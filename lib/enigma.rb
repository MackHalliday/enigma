require 'pry'
require 'date'


class Enigma

  def random_num
    random_digits = []
      5.times do random_digits << rand(0..9).to_s
    end
    key = random_digits.join
  end

  def encrypt(message, key = random_num, date = Time.now.strftime("%d%m%y"))
    key_encrypt = Key.new(key)
    offset_encrypt = Offset.new(date)
    shift_encrypt = Shift.new(message, key_encrypt.get_key_values, offset_encrypt.get_key_values)

    {encryption: shift_encrypt.shift_message(1),
    key: key_encrypt.key,
    date: date}
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    key_decrypt = Key.new(key)
    offset_decrypt = Offset.new(date)
    shift_decrypt = Shift.new(message, key_decrypt.get_key_values, offset_decrypt.get_key_values)

    {decryption: shift_decrypt.shift_message(-1),
    key: key_decrypt.key,
    date: date}
  end
end
