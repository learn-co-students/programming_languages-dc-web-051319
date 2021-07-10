def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |lang_style, language|
    language.each do |lang_name, lang_type|
      unless new_hash.key?(lang_name)
        new_hash[lang_name] = {
          type: lang_type.values.join, 
          style: [lang_style] }
      else
        new_hash[lang_name][:style] << lang_style
      end
    end
  end
  new_hash
end