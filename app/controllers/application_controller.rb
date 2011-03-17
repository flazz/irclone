class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_nick

  protected

  def require_nick

    if session['nick']
      @nick = session['nick']
    else
      redirect_to({:controller => :connect, :action => :index}, :alert => 'please connect first')
    end

  end

end
