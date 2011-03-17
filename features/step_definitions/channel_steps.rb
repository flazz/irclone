Given /^there is a recent channel named "([^"]*)"$/ do |name|
  c = Channel.new name
  c.should be_recent
end
