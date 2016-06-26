module CharHelper
	class Parser
		attr_reader :types_count
		attr_reader :words_count

		def initialize password
			@types_count = 0
			@words_count = 0
			@password = password

			count_components(/[A-Za-z]+/)
			count_components(/[0-9]+/)
			count_components(/\s+/)
			count_components(/[^A-Za-z0-9\s]+/)
		end

		def count_components regexp
			matches = @password.scan regexp
			if matches.size > 0
				@types_count += 1
				@words_count += matches.size
			end
		end
	end

	def self.parse password
		if password.to_s.empty?
			return {
				'types_count' => 0,
				'words_count' => 0
			}
		end
		
		parser = Parser.new password

		{
			'types_count' => parser.types_count,
			'words_count' => parser.words_count
		}
	end
end
