class Channel < Redis::List

  @@recents = Redis::Set.new 'recent_channels'

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
