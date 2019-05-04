require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(styles)
  new_hash = {}
  
  styles.each do |style, languages| 
    languages.each do |language, type|
      new_hash[language] = type
      new_hash[language][:style] = []
    end
  end
  
  styles.each do |style, languages|
    languages.each do |language, type|
      new_hash[language][:style].push(style)
    end
  end
  
 puts new_hash
 new_hash
end

reformat_languages(languages)