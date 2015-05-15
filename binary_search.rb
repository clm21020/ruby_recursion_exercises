def bsearch(array, target)
  return nil if array.empty?

  half = array.length / 2

  if array[half] == target
    half
  elsif array[half] < target
    search = bsearch(array[(half + 1)..-1], target)
    return nil if search.nil?
    search + half + 1
  else
    return nil if half == 0
    bsearch(array[0..(half - 1)], target)
  end
end
