require 'spec_helper'

describe SortingTutor::Sortings::InsertionSorting do
  it 'sorts a list of numbers' do
    numbers = [5,4,7,3,8,10,9]
    expect(described_class.new(numbers).sort).to eq(numbers.sort)
  end
end
