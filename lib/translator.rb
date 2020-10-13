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

def get_english_meaning(file, japemoji)
  hoh = load_library(file)
  hoh.keys.find do |key|
    hoh[key][:japanese] == japemoji
end
  japemoji ? japemoji : "Sorry, this emoticon was not found."
end
#def get_japanese_emoticon
  # code goes here
#end
