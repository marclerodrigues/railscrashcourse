file = File.read("read_file.txt")
words = file.split
words_hash = {}

words.each do |word|
  if words_hash.has_key?(word.to_sym)
    words_hash[word.to_sym] += 1
  else
    words_hash[word.to_sym] = 1
  end
end

words_hash.sort.each do |key, count|
  puts "Word: " + key.to_s + " / Count: " + count.to_s
end