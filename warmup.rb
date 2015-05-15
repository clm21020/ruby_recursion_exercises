def range(start, finish)
  return [] if finish < start
  return [start] if start == finish

  [start] + range((start + 1), (finish - 1)) + [finish]
end

def sum(array)
  return 0 if array.empty?
  array[0] + sum(array[1..-1])
end

def i_sum(array)
  result = 0

  array.each do |el|
    result += el
  end

  result
end
