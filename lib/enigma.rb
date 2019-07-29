require 'pry'
require 'date'


class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    key_1 = Key.new(key)
    key_hash = key_1.get_key_values

    offset_1 = Offset.new(date)
    offset_hash = offset_1.get_key_values

    shift = Shift.new(message, key_hash, offset_hash)

    encrypt_message = shift.encrypted_message

    {
          encryption: encrypt_message = shift.encrypted_message,
          key: key,
          date: date,
            }
  end

end
