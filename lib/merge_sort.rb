def merge_sort(arr)
  return arr if arr.length == 1

  half = arr.length / 2
  a = merge_sort(arr[0 .. half - 1])
  b = merge_sort(arr[half .. arr.length])
  return merge(a, b)
end

def merge (a, b)
  c = []
  until a.empty? || b.empty?
    a[0] > b[0] ? c.push(b.shift) : c.push(a.shift)
  end
  c + a + b
end

puts merge_sort([10, 5, 4, 8])
