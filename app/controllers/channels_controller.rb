class ChannelsController < ApplicationController

  def create
    name = params['channel']['name']
    c = Channel.new name
    redirect_to channel_path(c.key), :notice => "joined #{name}"
  end

  def index
  end

  def show
    @channel = Channel.new params['id']
  end

  def update
    @channel = Channel.new params['id']
    message = params['message']
    @channel << "#{@nick}: #{message}"
    redirect_to :action => :show
  end

end
