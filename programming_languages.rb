require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, list|
    #binding.pry
    list.each do |lang, deets|
      #binding.pry
      if new_hash[lang]
        new_hash[lang][:style] << type
      else
        new_hash[lang] = {
          type: deets[:type],
          style: [type]
        }
      end
    end
  end
  new_hash
end
