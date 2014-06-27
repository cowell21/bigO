#bubble sort
def bubble_sort(arr)
  loop do
    sorted = true
    (arr.length - 1).times do |el|
      if arr[el] > arr[el + 1]
        arr[el], arr[el + 1] = arr[el + 1], arr[el]
        sorted = false
      end
    end

    return arr if sorted
  end
end

arr = [3,2,763,324,32,-67,67,7,0,9,10]
puts bubble_sort(arr)