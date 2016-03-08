require "../lib/wordcounter.rb"
require "rspec"

describe WordCounter do
  before :each do
    @text = WordCounter.new "file_sample.txt"
  end

  it 'should have a string file' do
    expect(@text.file.class).not_to eq(nil)
  end

  it 'should have a words array' do
    expect(@text.words.class).to eq(Array)
  end

  it 'should count words' do
    expect(@text.count).to eq(5)
  end

  it 'should count unique words' do
    expect(@text.uniq_count).to eq(5)
  end

  it 'should count frequency' do
    expect(@text.frequency).to eq({:As=>1, :you => 1, :can => 1, :see => 1, :there => 1})
  end

end