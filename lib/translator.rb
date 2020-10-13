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

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end
#def get_japanese_emoticon
  # code goes here
#end
