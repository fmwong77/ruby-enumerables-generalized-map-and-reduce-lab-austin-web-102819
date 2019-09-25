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

def reduce(source_array, sv = nil)
  if block_given?
    if sv 
      sum = sv
      i = 0
    else
      sum = source_array[0]
      i = 1
   end
   
    while i < source_array.length do
      yield sum, source_array[i]
      i += 1
   end
    return sum
  else
    puts "Hey! No block was given!"
  end
end