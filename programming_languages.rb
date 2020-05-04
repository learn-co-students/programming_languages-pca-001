require 'pry'

def reformat_languages(languages)
  new_hash = {} 
  
  languages.each do |oofunc, langs_and_hash|
    langs_and_hash.each do |lang, type_hash|
      if new_hash.include?(lang)
        new_hash[lang][:style] << oofunc
      else
        type_hash.each do |type, value|
          new_hash[lang] = {:type => value, :style => [oofunc]}
        end
      end
    end
  end
  new_hash
end