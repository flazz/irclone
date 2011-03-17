class ChannelsController < ApplicationController

  def create
    name = params['channel']['name']
    c = Channel.new name
    redirect_to channel_path(c.key), :notice => "joined #{name}"
  end

  def index
  end

  def show
  end

  def update
  end

end
