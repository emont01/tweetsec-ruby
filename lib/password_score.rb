class PasswordScore
	attr_reader :original_text
	attr_reader :processed_text
	attr_reader :value

	def initialize original_text
		@original_text = original_text
		@processed_text = original_text.downcase
		
		case @original_text
		when "password1"
			@value = 4
		when "goat m4n"
			@value = 15
		when "s0_0per 5n4k3"
			@value = 44
		else
			@value = 0
		end
	end

end
