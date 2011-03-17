describe Channel do

  it "should be recent if within the last #{RECENT_CHANNELS_MAX}" do
    c = Channel.new 'recent'
    c.should be_recent
    Channel.recents.should include(c.key)
  end

  it "should not be recent unless within the last #{RECENT_CHANNELS_MAX}" do
    RECENT_CHANNELS_MAX.times { |n| Channel.new "recent_#{n}" }
    c = Channel.new 'over_the_limit'
    c.should_not be_recent
    Channel.recents.should_not include(c.key)
  end

end
