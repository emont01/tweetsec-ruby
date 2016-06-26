require "password_score"

class YouShallNotPassword
	def initialize twitter_client
		@twitter = twitter_client
	end

	def eval author, password
		score = PasswordScore.new password

		if score.value >= 50
			update_status "Congratulations #{author} '#{password}' is a strong password!"
		elsif score.value > 10
			suggestion = hardening password
			update_status "#{author} '#{password}' is a weak password, try with '#{suggestion}'"
		else
			update_status "#{author} unacceptable password, please try again with a better password!"
		end
	end

	def update_status new_status
		@twitter.update_status new_status
	end

	def hardening text
		aux = ''
		text.each_char do |c|
			case c.downcase
			when "a" then aux << "4"
			when "e" then aux << "3"
			when "i" then aux << "1"
			when "o" then aux << "0"
			else aux << c
			end
		end
		aux
	end
end
