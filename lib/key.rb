require 'pry'

class Key

  attr_accessor :key

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

  def join_pairs_together
    create_num_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def created_key_values
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip join_pairs_nums_together]
  end
end
