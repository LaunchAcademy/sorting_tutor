module SortingTutor
  class InsertionSorting < Sorting
    def sort
      list_to_sort = @unsorted_list.dup

      (1..list_to_sort.length-1).each do |index|
        (0..(index - 1)).each do |inner_index|
          if list_to_sort[inner_index] >= list_to_sort[index]
            list_to_sort.insert(inner_index, list_to_sort[index])
            list_to_sort.delete_at(index + 1)
          end
        end
      end

      list_to_sort
    end
  end
end
