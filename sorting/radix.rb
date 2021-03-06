#radix sort | assumes 0 or greater integers
class Radix
  attr_reader :arr

  def initialize(arr)
    @arr = arr

    ((Math.log10(@arr.max)).floor + 1).times do |el|
      buckets = make_buckets(@arr, (10 ** el) )
      @arr = merge_buckets(buckets)
    end
  end

  def int_buckets
    {}.tap { |buckets| 10.times { |el| buckets[el] = [] } }
  end

  def make_buckets(arr, mod)
    buckets = int_buckets
    arr.each { |el| buckets[(el / mod) % 10].push(el) }
    buckets
  end

  def merge_buckets(buckets)
    [].tap { |newArr| buckets.each { |key, val| newArr.concat(val) } }
  end
end

arr = [101,1,9,99,0,2,122,70,100,4,300,8,9]
answer = Radix.new(arr)
p answer.arr # -> [0, 1, 2, 4, 8, 9, 9, 70, 99, 100, 101, 122, 300]