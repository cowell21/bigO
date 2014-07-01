def binarySearch(arr, tar)

  return nil if arr.length == 1 && arr[0] != tar
  mid = arr.length / 2

  case tar <=> arr[mid]
  when -1
    return binarySearch(arr[0...mid], tar)
  when 0
    return mid
  when 1
    result = binarySearch(arr[mid..-1], tar)
    if result == nil
      return nil
    else
      return result + mid
    end
  end
end

arr = [1,2,3,4,5,6]
p binarySearch(arr, 6)