input1 = [3, 2, 1, 13, 8, 5, 0, 1]
input2 = [105, 79, 100, 110]

def merge_sort(array, return_array=[])
  # Define the size of the given array as a variable.
  size = array.size

  # Base case: If an array has a size of zero, return the value in the array.
  if size == 1
    array[0]
  else
    temp_array = []
    # Split array in half
    leftside = array[0...(size/2)]
    rightside = array[(size/2)..-1]
    # Assign variables to the left half and right half
    l = merge_sort(leftside)
    r = merge_sort(rightside)
    # In the case where l and r are both an array, 
    # combine l and r, take the minimum value from l and r, 
    # add it to temp_array, then return them.
    if l.is_a?(Array) && r.is_a?(Array)
      temp_array = l + r
      temp_array.size.times do |num|
        min = temp_array.min
        return_array << min
        temp_array.delete_at(temp_array.index(min))
      end
    else
      temp_array << l << r
      temp_array.min==l ? return_array << l << r : return_array << r << l
    end

    return return_array
    
  end
end

p merge_sort(input1)
p merge_sort(input2)