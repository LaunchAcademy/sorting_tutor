module SortingTutor
  class Frame < Array
    attr_reader :changed_indicies
    def initialize(array, changed_indicies)
      super(array)
      @changed_indicies = changed_indicies
    end

    def changed?
      !@changed_indicies.empty?
    end
  end
end
