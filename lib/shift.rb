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

  end
end
