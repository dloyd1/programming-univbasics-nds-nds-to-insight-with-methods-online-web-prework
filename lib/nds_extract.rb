require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_array = Array.new
  total_array = Array.new
  new_aoh = {}
  count = 0
  directors = nds.to_a.size
  
#===============================
  
    nds.each { |n| 
      director_array << n[:name].to_s}
    
  directors.times {
    nds[count][:movies].each { |n| 
        total_array << n[:worldwide_gross] 
        new_aoh[director_array[count]] = total_array.sum.to_i}
    total_array.clear
    count += 1}
  
  p new_aoh
end



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# def gross_for_director(director_data, index)
  
#   total_array = Array.new
 
#     director_data[index][:movies].each { |n| 
#         total_array << n[:worldwide_gross] }

#   p total_array.sum
# end




def gross_for_director(director_data)
  total = 0
  index = 0

  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

