require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
#reads "hello world"
message = handle.read
handle.close

#{:encryption=>"w nicvylfgf\n", :key=>"36777", :date=>"300719"}
encryption = enigma.encrypt(message)

encrypted = File.open(ARGV[1], "w")
#writes w nicvylfgf
encrypted.write(encryption[:encryption])
encrypted.close

puts "Created 'encrypted.txt' with the key #{encryption[:key]}and date #{encryption[:date]}"
