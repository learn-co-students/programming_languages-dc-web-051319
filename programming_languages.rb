require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, type|
    type.each do |language, value|
      
      new_hash[language] = value 
      ## new_hash { {:ruby=>{:type=>"interpreted"}}}
      
      new_hash[language][:style] = []
      ## new_hash { {:ruby=>{:type=>"interpreted", :style=>[]}}}
      
      if language == :javascript
        
        new_hash[language][:style] << :oo
        new_hash[language][:style] << :functional
  
      else
        new_hash[language][:style] << style    
      ## new_hash { {:ruby=>{:type=>"interpreted", :style=>[:oo]}}}
        
      end
    end
  end
  new_hash
 # binding.pry 
end  