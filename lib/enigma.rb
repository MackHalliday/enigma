require 'pry'
require 'date'


class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    key = Key.new(key)
    key.set
    offset = Offset.new(date)

  end

end
