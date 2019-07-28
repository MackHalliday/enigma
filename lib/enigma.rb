require 'pry'
require 'date'


class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    key = Key.new(key)
    key_hash = key.get_key_values

    offset = Offset.new(date)
    offset_hash = offset.get_key_values

    shift = Shift.new(message, key_hash, offset_hash)

    #shift.decode_message
  end

end
