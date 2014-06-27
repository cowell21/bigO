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
    if lower[0] < higher[0]
      arr.push(lower.shift)
    else
      arr.push(higher.shift)
    end
  end

  lower.empty? ? arr.concat(higher) : arr.concat(lower)
end

arr = [4,3,8,7,5,2,-6,1,9,15,11]
p merge_sort(arr)