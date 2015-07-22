module SortingTutor
  module Sortings
    class BubbleSorting < Sorting
      def sort
        list_to_sort = @unsorted_list.dup

        sorted = false

        until sorted
          sorted = true

          (0..(list_to_sort.length - 2)).each do |index|
            if list_to_sort[index] > list_to_sort[index + 1]
              sorted = false
              list_to_sort[index], list_to_sort[index + 1] = list_to_sort[index + 1], list_to_sort[index]
            end
          end
        end

        list_to_sort
      end
    end
  end
end
