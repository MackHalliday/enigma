#should take 4 args
#1. file that contains encrypted message
#2. file to write decrypted message
#3. key used for decryption
#4. date used for decryption
#5. $ ruby ./lib/encrypt.rb message.txt encrypted.txt
#Created 'encrypted.txt' with the key 82648 and date 240818

# $ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818
# Created 'decrypted.txt' with the key 82648 and date 240818

require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
#reads "hello world"
encrypted_message = handle.read
handle.close


decryption = enigma.decrypt(encrypted_message, ARGV[2], ARGV[3])

encrypted = File.open(ARGV[1], "w")
#writes m bktvmnwgu
encrypted.write(decryption[:decryption])
encrypted.close

puts "Created 'decrypted.txt' with the key #{decryption[:key]} and date #{decryption[:date]}."
