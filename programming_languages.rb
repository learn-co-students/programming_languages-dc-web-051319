=begin
ruby
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
=end

def reformat_languages(languages)
  # your code here
  newHash = {}

  languages.each do |style,language|
    language.each do |name, info|
      newHash[name] ||= info
      if newHash[name][:style] == nil
        newHash[name][:style] = []
      end
      newHash[name][:style] << style

    end
  end
  return newHash
end






#hi
