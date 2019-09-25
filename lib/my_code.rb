def map(source_array)
  if block_given?
    new = []
    i = 0
    while i < source_array.length do
      new.push(yield(source_array[i]))
      i += 1
    end
    return new
  else
    puts "Hey! No block was given!"
  end
end

def reduce(array, sv = nil)
  if block_given?
    if sv 
      sum = sv
      i = 0
    else
      sum = array[0]
      i = 1
   end
   
    while i < array.length do
      sum = yield(sum, array[i])
      i += 1
   end
  sum
  else
    puts "Hey! No block was given!"
  end
end