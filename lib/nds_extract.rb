$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

#def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 # nil
#end

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

