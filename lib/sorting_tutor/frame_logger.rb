module SortingTutor
  class FrameLogger
    attr_reader :frames
    include Enumerable

    def initialize
      @frames = []
    end

    def log(frame, changed_indicies = [])
      @frames << Frame.new(frame, changed_indicies)
    end

    def each(&block)
      @frames.each(&block)
    end

    def empty?
      @frames.empty?
    end
  end
end
