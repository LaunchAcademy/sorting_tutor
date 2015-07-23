module SortingTutor
  class FrameLogger
    attr_reader :frames
    include Enumerable

    def initialize
      @frames = []
    end

    def log(frame, changed_indices, indices_compared)
      @frames << Frame.new(frame, changed_indices, indices_compared)
    end

    def each(&block)
      @frames.each(&block)
    end

    def empty?
      @frames.empty?
    end
  end
end
