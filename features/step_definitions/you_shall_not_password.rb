require "you_shall_not_password"
require "minitest/autorun"


Given /^a valid twitter username "([^"]*)"$/ do |username|
	@username = username
end

When /^the user sends a strong password: "([^"]*)"$/ do |password|
	@password = password
end

When /^the user sends a weak password: "([^"]*)"$/ do |password|
	@password = password
end

When /^the user sends an unacceptable password: "([^"]*)"$/ do |password|
	@password = password
end

Then /^the following response should be received "([^"]*)"$/ do |expected|
	@twitter = Minitest::Mock.new
	@twitter.expect :update_status, nil, [expected]

	@evaluator = YouShallNotPassword.new @twitter
	@evaluator.eval @username, @password

	@twitter.verify
end
