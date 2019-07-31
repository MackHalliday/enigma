require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
encrypted_message = handle.read
handle.close


decryption = enigma.decrypt(encrypted_message, ARGV[2], date = ARGV[3])

encrypted = File.open(ARGV[1], "w")
encrypted.write(decryption[:decryption])
encrypted.close

puts "Created 'decrypted.txt' with the key #{decryption[:key]} and date #{decryption[:date]}."
