require 'thor'

module SortingTutor
  class CommandLineInterface < Thor
    desc "all", "use all sorting algorithms"
    def all
      random_array_length = rand(5..8)
      array = []
      random_array_length.times do
        array << rand(100)
      end

      [
        SortingTutor::Sortings::SelectionSorting,
        SortingTutor::Sortings::InsertionSorting,
        SortingTutor::Sortings::BubbleSorting
      ].each do |sorting_algo|
        algo = sorting_algo.new(array)

        puts algo.class.name
        sorting_algo.new(array).sort
        SortingTutor::Displays::ColoredDiff.new(SortingTutor.frame_logger).output

        #flush the log for each algorithm
        SortingTutor.flush_frame_logger!
      end
    end
  end
end
