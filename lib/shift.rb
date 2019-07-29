require 'pry'

class Shift
  attr_reader :message, :key_hash, :offset_hash


  def initialize(message, key_hash, offset_hash)
    @message = message
    @key_hash = key_hash
    @offset_hash = offset_hash
    @characters = ('a'..'z').to_a << ' '

  end

  def join_hashes
    final_key = Hash.new

    @key_hash.map do |key, value|
      final_key[key] = @key_hash[key].to_i + @offset_hash[key].to_i
    end
    final_key
  end

  def parse_message
    message = "Hello"
    characters = ('a'..'z').to_a << ' '
    a_shift = 1

    non_caps = Hash[characters.zip(characters.rotate(a_shift))]

    a_values = ["a", "b", "c"]

    a_values.map do |value|
      value = non_caps[value]
    end
  end
end
