require 'pry'

# merge sort
def merge_sort(array)
  len = array.length
  return array if len <= 1

  b = array[0..((len / 2) - 1)]
  c = array[len / 2..len]
  combine(merge_sort(b), merge_sort(c))
end

def combine(b, c)
  index_b = 0
  index_c = 0
  a = []
  while index_b < b.length && index_c < c.length
    if b[index_b] < c[index_c]
      a << b[index_b]
      index_b += 1
    else
      a << c[index_c]
      index_c += 1
    end
  end
  if index_b == b.length
    a << c[index_c..c.length]
  else
    a << b[index_b..b.length]
  end
  a.flatten
end

def random_num_array(num)
  array = []
  num.times do
    array << rand(100)
  end
  array
end

array = random_num_array(rand(100))

p merge_sort(array)

# b = [6, 4, 3]
# c = [2, 1, 8]
# combine(b, c)