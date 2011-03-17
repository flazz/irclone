Given /^some user "([^"]*)" says "([^"]*)" in "([^"]*)"$/ do |user, msg, channel|
  s = session_for user
  s.visit channel_path(channel)
  s.fill_in 'message', :with => msg
  s.click_button 'send'
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

