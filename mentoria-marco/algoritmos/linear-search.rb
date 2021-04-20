arr = [1, 12, 23, 34, 45, 56, 67]
x = 100

def linear_search(arr, value_search)
  arr.each.with_index do |element, index|
    if element == value_search
      return index
    elsif element < value_search
      break
    end
  end
  -1
end
