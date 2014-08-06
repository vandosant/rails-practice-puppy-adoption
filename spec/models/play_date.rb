require_relative '../../spec/spec_helper'

describe PlayDate do
  it "is invalid if the date is in the past" do
    play_date = PlayDate.new(date: 1.day.ago)
    expect(play_date).to_not be_valid
    expect(play_date).to have(1).error
  end

  it "is valid if the date is in the future" do
    play_date = PlayDate.new(date: 1.day.from_now)
    expect(play_date).to be_valid
    expect(play_date).to have(0).errors
  end
end