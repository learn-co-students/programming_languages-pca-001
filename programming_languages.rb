def reformat_languages(languages)
  hash = {}
  languages.each do |k0,v0|
    v0.each do |k1,v1|
      if hash.key?(k1)
        hash[k1][:style].push(k0)
      else
        hash[k1] = { type: v1[:type], style: [k0]}
      end
    end
  end
  hash
end