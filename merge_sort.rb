def merge_sort(array)
  return array if array.length < 2

  split_point = array.length / 2
  first_half = array[0..(split_point - 1)]
  second_half = array[split_point..-1]

  merge(merge_sort(first_half), merge_sort(second_half))
end

def merge(a, b)
  result = []

  until a.empty? || b.empty?
    result << (a.first < b.first ? a.shift : b.shift)
  end

  # a.empty? ? result + b : result + a
  result + a + b
end
