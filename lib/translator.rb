# require modules here
require 'pry'
require "yaml"

def load_library(file)
  file = YAML.load_file('lib/emoticons.yml')
  library = Hash.new
  file.each do |key, value|
    library[key] = {}
    library[key][:english] = value[0]
    library[key][:japanese] = value[1]
  end
  library
end

def get_english_meaning(file, emojis)
  load_library(file)
  load_library(file).each do |key, value|
  binding.pry
end
end

#def get_japanese_emoticon
  # code goes here
#end
