require 'spec_helper'

describe Channel do

  it "should be recent if within the last #{RECENT_CHANNELS_MAX}" do
    c = Channel.new 'recent'
    c.should be_recent
  end

  it "should not be recent unless within the last #{RECENT_CHANNELS_MAX}" do
    c = Channel.new 'first_in'
    RECENT_CHANNELS_MAX.times { |n| Channel.new "recent_#{n}" }
    c.should_not be_recent
  end

  it "should maintain a list of recents" do
    RECENT_CHANNELS_MAX.times { |n| Channel.new "recent_#{n}" }
    Channel.recents.size.should == RECENT_CHANNELS_MAX
  end

end
