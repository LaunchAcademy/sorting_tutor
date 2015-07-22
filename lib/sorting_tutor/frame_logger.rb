module SortingTutor
  class FrameLogger
    attr_reader :frames

    def initialize
      @frames = []
    end

    def log(frame)
      @frames << Frame.new(frame)
    end

    def empty?
      @frames.empty?
    end
  end
end
