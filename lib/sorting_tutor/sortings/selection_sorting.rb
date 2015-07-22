module SortingTutor
  module Sortings
    class SelectionSorting < Sorting
      def sort
        list_to_sort = @unsorted_list.dup
        SortingTutor.log_frame(list_to_sort, [])

        n = list_to_sort.size - 1
        # outer loop - visit each node except the last
        n.times do |i|
          min_index = i
          # inner loop - find the smallest one, retain the index
          (i + 1).upto(n) do |j|
            min_index = j if list_to_sort[j] < list_to_sort[min_index]
          end

          changed_indicies = []
          #swap the smallest one into the i position
          if min_index != i
            list_to_sort[i], list_to_sort[min_index] = list_to_sort[min_index], list_to_sort[i]
            changed_indicies = [i, min_index]
          end

          SortingTutor.log_frame(list_to_sort, changed_indicies)
        end

        list_to_sort
      end
    end
  end
end
