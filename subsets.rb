require 'byebug'

def subsets(array)
  return [[]] if array.empty?

  first = array.shift

  without = subsets(array)
  with = without.map { |set| set + [first] }

  without + with
end
