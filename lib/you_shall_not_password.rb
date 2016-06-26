class YouShallNotPassword
	def initialize twitter_client
		@twitter = twitter_client
	end

	def eval username, password
		case password
		when "4 v3ry str0ng passw0rd."
			@twitter.update_status "Congratulations @JohnDoe '4 v3ry str0ng passw0rd.' is a strong password!"
		when "s0_0per 5n4k3"
			@twitter.update_status "@JohnDoe 's0_0per 5n4k3' is a weak password, try with 's0_0p3r 5n4k3'"
		else
			@twitter.update_status "@JohnDoe unacceptable password, please try again with a better password!"
		end
	end
end
