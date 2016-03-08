class WordCounter
  attr_reader :file, :hash
  def initialize file_name
    @file = File.read(file_name)
    @hash = {}
  end

  def words
    file.split
  end

  def count
    words.length
  end

  def uniq_count
    words.uniq.length
  end

  def frequency
    words.each do |word|
      if hash.has_key? word
        hash[word.to_sym] += 1
      else
        hash[word.to_sym] = 1
      end
    end
    hash
  end

end

#Test

text = WordCounter.new "read_file.txt"

puts text.file.class

puts text.count
puts text.uniq_count
puts text.frequency