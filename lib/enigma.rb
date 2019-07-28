require 'pry'
require 'date'


class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    key = Key.new(key)
    key_hash = key.get_key_values

    offset_1 = Offset.new(date)
    offset_hash = key.get_key_values
    shift = Shift.new(message, key_hash, offset_hash)

  end

end
