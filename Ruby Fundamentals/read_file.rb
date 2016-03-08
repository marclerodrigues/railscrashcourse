file = File.read("read_file.txt")
words = file.split
puts "Total Words: " + words.length.to_s
puts "Unique Words: " + words.uniq.length.to_s
