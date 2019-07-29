require 'pry'
require 'date'


class Enigma

  def encrypt(message, key, date = Time.now.strftime("%d%m%y"))
    key_encrypt = Key.new(key)
    offset_encrypt = Offset.new(date)
    shift_encrypt = Shift.new(message, key_encrypt.get_key_values, offset_encrypt.get_key_values)

        {encryption: encrypt_message = shift_encrypt.shift_message(1),
        key: key,
        date: date}
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    key_decrypt = Key.new(key)
    offset_decrypt = Offset.new(date)
    shift_decrypt = Shift.new(message, key_decrypt.get_key_values, offset_decrypt.get_key_values)

        {decryption: decrypt_message = shift_decrypt.shift_message(-1),
        key: key,
        date: date}
  end

end
