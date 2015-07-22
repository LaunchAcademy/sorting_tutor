require "sorting_tutor/version"

require "sorting_tutor/frame"
require "sorting_tutor/frame_logger"

require "sorting_tutor/sortings/sorting"
require "sorting_tutor/sortings/selection_sorting"
require "sorting_tutor/sortings/insertion_sorting"
require "sorting_tutor/sortings/bubble_sorting"

require "sorting_tutor/command_line_interface"

module SortingTutor
  class << self
    def frame_logger
      @frame_logger ||= SortingTutor::FrameLogger.new
    end

    def log_frame(array)
      frame_logger.log(array)
    end

    def flush_frame_logger!
      @frame_logger = SortingTutor::FrameLogger.new
    end
  end
end
