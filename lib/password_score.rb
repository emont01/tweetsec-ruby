require "char_helper"

class PasswordScore
	attr_reader :original_text
	attr_reader :processed_text
	attr_reader :value

	def initialize original_text
		@original_text = original_text
		@processed_text = original_text.downcase
		
		parsed_data = CharHelper.parse @processed_text
		@value = parsed_data['types_count'] * parsed_data['words_count']
	end

end
