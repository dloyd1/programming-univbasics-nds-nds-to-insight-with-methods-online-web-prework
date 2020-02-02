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
  p nds[0]
end

#directors_totals(directors_database)


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# def gross_for_director(director_data)
  
#   director_array = Array.new
#   total_array = Array.new
#   new_aoh = {}
#   count = 0
#   directors = nds.to_a.size
  
# #===============================
  
#     director_data.each { |n| 
#       director_array << n[:name].to_s}
    
#   directors.times {
#     director_data[count][:movies].each { |n| 
#         total_array << n[:worldwide_gross] 
#         new_aoh[director_array[count]] = total_array.sum.to_i}
#     total_array.clear
#     count += 1}
  
#   p new_aoh
# end
  
# gross_for_director(director_data)


