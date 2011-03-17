Given /^I am not signed in$/ do
  reset!
end

Given /^I am connected as "([^"]*)"$/ do |nick|
  And %Q{I am on the connect page}
  And %Q{I fill in "nick" with "#{nick}"}
  And %Q{I press "connect"}
  And %Q{I should see "welcome #{nick}" within ".notice"}
end
