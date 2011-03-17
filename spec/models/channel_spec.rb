require 'spec_helper'

describe Channel do

  it "should be recent if it was ever created" do
    c = Channel.new 'recent'
    c.should be_recent
  end

  it "should maintain a list of recents" do
    10.times { |n| Channel.new "recent_#{n}" }
    Channel.recents.size.should == 10
  end

end
