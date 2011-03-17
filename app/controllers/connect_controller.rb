class ConnectController < ApplicationController
  skip_before_filter :require_nick, :only => [:index, :connect]

  def index
    # just show the connect page
  end

  def connect
    session['nick'] = params['nick']
    redirect_to({:controller => :channels, :action => :index}, :notice => "goodbye #{@nick}")
  end

  def disconnect
    session.clear
    redirect_to({:action => :index}, :notice => "goodbye #{@nick}")
  end

end
