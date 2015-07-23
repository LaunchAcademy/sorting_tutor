module SortingTutor
  class Frame < Array
    attr_reader :changed_indices, :compared_indices
    def initialize(array, changed_indices, compared_indices)
      super(array)
      @changed_indices = changed_indices
      @compared_indices = compared_indices
    end

    def changed?
      !@changed_indices.empty?
    end
  end
end
