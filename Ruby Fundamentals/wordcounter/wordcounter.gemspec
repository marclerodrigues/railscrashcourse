# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = "WordCounter"
  spec.version      = '0.1'
  spec.authors      = ["Marcle Rodrigues"]
  spec.email        = ["maarclee@gmail.com"]
  spec.summary      = %q{Word Counter}
  spec.description  = %q{A small application to count words}
  spec.homepage     = "http://marclerodrigues.wordpress.com/"
  spec.license      = "MIT"

  spec.files        = ['lib/wordcounter.rb']
  spec.executables  = ['bin/wordcounter']
  spec.test_files   = ['tests/test_wordcounter.rb']
  spec.require_path = ["lib"]
end