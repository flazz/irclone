class Channel < Redis::List

  @@recents = Redis::List.new 'recent_channels', :maxlength => RECENT_CHANNELS_MAX

  def self.recents
    @@recents
  end

  def initialize name
    super name, :maxlength => CHANNEL_LOG_SIZE
    @@recents << key
  end

  def recent?
    @@recents.include? key
  end

end
