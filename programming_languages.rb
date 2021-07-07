require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
  top_level(languages).each{|x,y| new_hash[x]=y.merge(style:[])}
  #new_hash.keys.each{|x| add_style(x,languages,new_hash)}
  new_hash.keys.each{|key| 
	languages.each{|x1,y1| 
		y1.each{|x2,y2| 
		if x2==key 
		new_hash[key][:style] << x1 
		end 
		}
	}
}
  #binding.pry
  new_hash
end

def top_level(languages)
  retHash = {}
  languages.keys.each{|x| retHash=retHash.merge(languages[x])
  }
  retHash
end

#def add_style(pain,languages,new_hash)
#  languages.each{|x,y| y.each{|x1,y1| if x1==pain new_hash[pain][:style] << x end }}
#end