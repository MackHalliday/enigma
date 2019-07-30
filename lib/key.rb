require 'pry'

class Key

  attr_accessor :key

  def initialize(key)
    @key = key
    @key_categories = [:a, :b, :c, :d]
  end

  # def random_num
  #   random_digits = []
  #     5.times do random_digits << rand(0..9).to_s
  #   end
  #   key = random_digits.join
  # end

  def create_pairs
    # if @key = 1
    #   random_num
    # end
    @key.split(//).each_cons(2).to_a
  end

  def join_pairs
    create_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def get_key_values
    key_hash = Hash[@key_categories.zip join_pairs]
  end
end
