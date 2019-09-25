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

def reduce(source_array, starting_point = nil)
  if block_given?
    new = []
    i = 0
    
    
    if starting_point == nil
      total = source_array[i]
  else
    total = starting_point
    while i < source_array.length do
      total = yield source_array[i], starting_point
      i += 1
    end
    return total
  end
  else
    puts "Hey! No block was given!"
  end
end