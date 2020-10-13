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
  japemoji = hoh.keys.find do |key|
    hoh[key][:japanese] == japemoji
  end
  japemoji ? japemoji : "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file, engemoji)
  hoh = load_library(file)
  engemoji = hoh.keys.find do |key|
    hoh[key][:english] == engemoji
  end
  engemoji ? hoh[engemoji][:japanese] : "Sorry, that emoticon was not found"
end
