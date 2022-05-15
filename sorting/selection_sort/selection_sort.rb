# The idea is to replace find the first min element and put it on the first place,
# and swap the first place with min element place
# then move the next place
# now find the min element again and swap

def selection_sort(array)
  length = array.length

  for i in (0 .. length - 1)
    min = array[i]
    min_index = i

    # we just assume the red area to be all the elements other than the current one to the right

    for red in (i+1 .. length - 1)
      if array[red] < min
        min = array[red]
        min_index = red
      end
    end

    array[min_index] = array[i]
    array[i] = min
  end

  return array
end

sorted = selection_sort([5,3,1,2,4,5])
puts "sorted #{sorted}"