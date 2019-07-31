require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'

enigma = Enigma.new



handle = File.open(ARGV[0], "r")
message = handle.read
handle.close

encryption = enigma.encrypt(message)

encrypted = File.open(ARGV[1], "w")
encrypted.write(encryption[:encryption])
encrypted.close


puts "#{enigma.encrypt(message)}"
