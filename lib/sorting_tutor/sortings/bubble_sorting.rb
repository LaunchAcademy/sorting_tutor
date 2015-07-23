module SortingTutor
  module Sortings
    class BubbleSorting < Sorting
      def sort
        list_to_sort = @unsorted_list.dup

        sorted = false

        until sorted
          sorted = true

          SortingTutor.log_frame(list_to_sort)
          (0..(list_to_sort.length - 2)).each do |index|
            changed_indicies = []
            if list_to_sort[index] > list_to_sort[index + 1]
              sorted = false
              changed_indicies = [index, index + 1]
              list_to_sort[index], list_to_sort[index + 1] = list_to_sort[index + 1], list_to_sort[index]
            end

            SortingTutor.log_frame(list_to_sort, changed_indicies, [index, index + 1])
          end
        end

        list_to_sort
      end
    end
  end
end
