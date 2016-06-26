Feature: You Should not password

	As a twitter user
	I want to send tweets to @YouShouldNotPassword with a word
	So it can be evaluated

	Scenario: A very secure password
		Given a valid twitter username "@JohnDoe"
		When the user sends a strong password: "4 v3ry str0ng passw0rd."
		Then the following response should be received "Congratulations @JohnDoe '4 v3ry str0ng passw0rd.' is a strong password!"

	Scenario: A weak password
		Given a valid twitter username "@JohnDoe"
		When the user sends a weak password: "s0_0per 5n4k3"
		Then the following response should be received "@JohnDoe 's0_0per 5n4k3' is a weak password, try with 's0_0p3r 5n4k3'"

	Scenario: An unacceptable password
		Given a valid twitter username "@JohnDoe"
		When the user sends an unacceptable password: "password1"
		Then the following response should be received "@JohnDoe unacceptable password, please try again with a better password!"
