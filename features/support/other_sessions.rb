module OtherSessions

  def session_for user
    @sessions ||= {}

    unless @sessions[user]
      session = Capybara::Session.new Capybara.current_driver, Capybara.app
      session.visit '/connect'
      session.fill_in 'nick', :with => user
      session.click_button 'connect'
      @sessions[user] = session
    end

    @sessions[user]
  end

end

World(OtherSessions)
