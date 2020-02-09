def map(array)
  result_array = []
  i = 0
    while i < array.length
      yield(array[i])
      result_array.push(yield(array[i]))
    i += 1
    end
  result_array
end

def reduce(array, starting_value=nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = array[0]
    i = 1
  end
  if i < array.length
  sum += yield(sum, array[i])
  i += 1
  end
  sum
end