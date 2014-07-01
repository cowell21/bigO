def merge_sort(arr)
  return arr if arr.length == 1

  middle = arr.length / 2
  lower = merge_sort(arr[0...middle])
  higher = merge_sort(arr[middle..-1])

  merge(lower, higher)
end

def merge(lower, higher)
  arr = []

  until lower.empty? || higher.empty?
    (lower[0] < higher[0]) ? arr << lower.shift : arr << higher.shift
  end

  arr.concat(lower).concat(higher)
end

arr = [4,3,8,7,5,2,-6,1,9,15,11]
p merge_sort(arr)