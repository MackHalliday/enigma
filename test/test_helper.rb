require 'simplecov'

SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require 'date'
require './lib/enigma'
require './lib/shift'
require './lib/key'
require './lib/offset'
