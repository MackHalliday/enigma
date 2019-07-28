require 'pry'

class Shift
  attr_reader :message, :key_hash, :offset_hash


  def initialize(message, key_hash, offset_hash)
    @message = message
    @key_hash = key_hash
    @offset_hash = offset_hash
  end

  def join_hashes
    final_key = Hash.new

    @key_hash.map do |key, value|
      final_key[key] = @key_hash[key].to_i + @offset_hash[key].to_i
    end
    final_key
  end

  def parse_message
    message = @message.split(//).to_enum

    test = message.with_index {|value, index| [value]}
#     a=[11,22,31,224,44].to_enum
# => [11, 22, 31, 224, 44]
# a.with_index { |val,index| puts "index: #{index} for #{val}" }
# index: 0 for 11
# index: 1 for 22
# index: 2 for 31
# index: 3 for 224
# index: 4 for 44
  test
  end
end
