require 'pry'

class Shift
  attr_reader :message, :key_hash, :offset_hash


  def initialize(message, key_hash, offset_hash)
    @message = message
    @key_hash = key_hash
    @offset_hash = offset_hash
  end
end
