input1 = [3, 2, 1, 13, 8, 5, 0, 1]
input2 = [105, 79, 100, 110]

def merge_sort(list)
  n = list.size
  if n == 1
    list
  end
  array_one = []
  array_two = []

  range1 = list[0]...list[n/2]
  range2 = list[n/2]...list[n]

  new_arr_1 = range1.to_a
  new_arr_2 = range2.to_a

  new_arr_1.filter {|num| array_one << num}
  new_arr_2.filter {|num| array_two << num}

  array_one = merge_sort(array_one)
  array_two = merge_sort(array_two)

  merge(array_one, array_two)
end

def merge(split1, split2)
  result_split = nil

  while(split1.empty? == false && split2.empty? == false)
    if (split1[0] > split2[0])
      result_split << split2[0]
      split2.shift
    else
      result_split << split1[0]
      split1.shift
    end
  end

  while (split1.empty? == false)
    result_split << split1[0]
    split1.shift
  end
  while (split2.empty? == false)
    result_split << split2[0]
    split2.shift
  end

  result_split
end



# Expected Output
puts merge_sort(input1)
# outputs: [0, 1, 1, 2, 3, 5, 8, 13]
# merge_sort(input2)
# outputs: [79, 100, 105, 110]