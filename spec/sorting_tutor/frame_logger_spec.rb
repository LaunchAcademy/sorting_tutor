require 'spec_helper'

describe SortingTutor::FrameLogger do
  it 'logs different versions of an array' do
    array = [1,2,3]
    frame_logger = described_class.new
    frame_logger.log(array)
    expect(frame_logger.frames).to eq([array])
  end
end
