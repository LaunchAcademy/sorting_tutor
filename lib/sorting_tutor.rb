require "sorting_tutor/version"

require "sorting_tutor/frame"
require "sorting_tutor/frame_logger"

require "sorting_tutor/sortings/sorting"
require "sorting_tutor/sortings/selection_sorting"
require "sorting_tutor/sortings/insertion_sorting"
require "sorting_tutor/sortings/bubble_sorting"

require "sorting_tutor/displays/colored_diff"
require "sorting_tutor/command_line_interface"

module SortingTutor
  class << self
    def frame_logger
      @frame_logger ||= SortingTutor::FrameLogger.new
    end

    def log_frame(array, changed_indicies = [], indicies_compared = [])
      frame_logger.log(array, changed_indicies, indicies_compared)
    end

    def flush_frame_logger!
      @frame_logger = SortingTutor::FrameLogger.new
    end
  end
end
