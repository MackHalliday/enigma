require 'pry'

class Key

  attr_reader :key

  def initialize(key = random_num)
    @key = key
  end


  def random_num
    random_digits = []
    5.times do random_digits << rand(0..9).to_s
    end
    @key = random_digits.join
  end

  def create_pairs
    @key.split(//).each_cons(2).to_a
  end

  def join_pairs
    create_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def get_key_values
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip join_pairs]
  end
end
