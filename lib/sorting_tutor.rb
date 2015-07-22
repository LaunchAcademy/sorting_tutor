require "sorting_tutor/version"

require "sorting_tutor/frame"
require "sorting_tutor/frame_logger"

require "sorting_tutor/sortings/sorting"
require "sorting_tutor/sortings/selection_sorting"
require "sorting_tutor/sortings/insertion_sorting"
require "sorting_tutor/sortings/bubble_sorting"


module SortingTutor
  class << self
    def frame_logger
      @frame_logger ||= SortingTutor::FrameLogger.new
    end

    def flush_frame_logger!
      @frame_logger = SortingTutor::FrameLogger.new
    end
  end
end
