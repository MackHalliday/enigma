require 'pry'

class Key

  attr_accessor :key

  def initialize(key)
    @key = key
    @key_categories = [:a, :b, :c, :d]
  end

  def create_pairs
    @key.split(//).each_cons(2).to_a
  end

  def join_pairs
    create_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def get_key_values
    Hash[@key_categories.zip join_pairs]
  end
end
