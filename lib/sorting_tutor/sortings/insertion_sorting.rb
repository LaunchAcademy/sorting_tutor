module SortingTutor
  module Sortings
    class InsertionSorting < Sorting
      def sort
        list_to_sort = @unsorted_list.dup

        SortingTutor.log_frame(list_to_sort)
        (1..list_to_sort.length-1).each do |index|
          (0..(index - 1)).each do |inner_index|
            changed_indicies = []
            if list_to_sort[inner_index] >= list_to_sort[index]
              list_to_sort.insert(inner_index, list_to_sort[index])
              list_to_sort.delete_at(index + 1)
              changed_indicies = [inner_index, index]
            end
            SortingTutor.log_frame(list_to_sort, changed_indicies, [index, inner_index])
          end
        end

        list_to_sort
      end
    end
  end
end
