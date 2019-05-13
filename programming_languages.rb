def reformat_languages(languages)
  new_hash = {}
  languages.each do |key1, value1|
    value1.each do |key2, value2|
     new_hash[key2] = value2
     new_hash[key2][:style] = []
    end
  end
  languages.each do |key1, value1|
    value1.each do |key2, value2|
      new_hash[key2][:style].push(key1)
    end
  end
  new_hash
end

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

puts reformat_languages(languages)
