require 'byebug'

class InsertionSort
  # manually written sort function for integer arrays
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    current_index = 1
    while current_index < array.length
      current_value = array[current_index]
      sublist_comparison_index = current_index

      while sublist_comparison_index > 0 && current_value < array[sublist_comparison_index-1]
        #substitute values, right and left
        first_val = array[sublist_comparison_index - 1]
        new_val = array[sublist_comparison_index]
        array[sublist_comparison_index - 1], array[sublist_comparison_index] = new_val, first_val
        # move to the left to check against next in sub-array
        sublist_comparison_index -= 1
      end
      current_index += 1
    end
    array
  end
end
