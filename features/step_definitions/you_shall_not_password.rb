require "./lib/you_shall_not_password"

username = nil
evaluator = nil

Given(/^a valid twitter username "([^"]*)"$/) do |username|
  step %[using username "#{username}"]
end

When(/^"([^"]*)" send the password "([^"]*)"$/) do |username, password|
  evaluator = YouShallNotPassword.eval(username, password)
end

Then(/^the following response should be received "([^"]*)"$/) do |status_text|
  
end
