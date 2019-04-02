def reformat_languages(languages)
    reform = {}
    languages.each_value{ |names| reform = reform.merge(names) }

    reform.map{ |name, value_hash| value_hash[:style] = [] }

    reform.each do |name, value_hash|
        languages.each do |style, name_hash|
            name_hash.keys.include?(name) ? value_hash[:style] << style : nil
        end
    end

    return reform
end

 puts reformat_languages({
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
})
