require 'pry'
require 'date'


class Enigma

  def encrypt(message, key, date = Time.now.strftime("%d%m%y"))
    key_encrypt = Key.new(key)
    offset_encrypt = Offset.new(date)
    shift_encrypt = Shift.new(message, key_encrypt.get_key_values, offset_encrypt.get_key_values)

        {encryption: encrypt_message = shift_encrypt.encrypted_message,
        key: key,
        date: date}
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    key_decrypt = Key.new(key)
    offset_decrypt = Offset.new(date)
    shift_decrypt = Shift.new(message, key_decrypt.get_key_values, offset_decrypt.get_key_values)

        {encryption: decrypt_message = shift_decrypt.encrypted_message,
        key: key,
        date: date}
  end

end
