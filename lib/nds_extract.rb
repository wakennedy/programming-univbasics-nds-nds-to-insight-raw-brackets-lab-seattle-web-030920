$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
list = {}
directors_index = 0 
  while directors_index < nds.length do 
    title_index = 0 
    grand_total = 0 
    while title_index < nds[directors_index][:movies].length do
      grand_total += nds[directors_index][:movies][title_index][:worldwide_gross]
      title_index+=1
    end
    list["#{nds[directors_index][:name]}"] = grand_total
    directors_index +=1 
 end
 pp list
end

