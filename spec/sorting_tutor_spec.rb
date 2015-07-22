require 'spec_helper'

describe SortingTutor do
  it 'has a version number' do
    expect(SortingTutor::VERSION).not_to be nil
  end

  it 'has a frame_logger' do
    expect(SortingTutor.frame_logger).to be_kind_of(SortingTutor::FrameLogger)
  end

  it 'allows for the flushing of the frame log' do
    SortingTutor.frame_logger.log([1,2,3])
    SortingTutor.flush_frame_logger!
    expect(SortingTutor.frame_logger).to be_empty
  end
end
