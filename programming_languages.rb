require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |key, value|
    value.each do |key1, value1|
      if new_hash.include?(key1)
        new_hash[key1][:style] << key
      else value1.each do |type, value|
        new_hash[key1] = {:type => value, :style => [key]}
      end
      end
    end
  end
new_hash
end
