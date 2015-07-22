module SortingTutor
  class SelectionSorting < Sorting
    def sort
      list_to_sort = @unsorted_list.dup
      n = list_to_sort.size - 1
      # outer loop - visit each node except the last
      n.times do |i|
        min_index = i
        # inner loop - find the smallest one, retain the index
        (i + 1).upto(n) do |j|
          min_index = j if list_to_sort[j] < list_to_sort[min_index]
        end

        #swap the smallest one into the i position
        if min_index != i
          list_to_sort[i], list_to_sort[min_index] = list_to_sort[min_index], list_to_sort[i]
        end
      end

      list_to_sort
    end
  end
end
