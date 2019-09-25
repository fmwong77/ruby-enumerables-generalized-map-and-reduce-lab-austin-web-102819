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

def reduce(source_array, starting_point = 0)
  if block_given?
    new = []
    i = 0
    total = starting_point
    
    if source_array.all? return source_array.all?
  else
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