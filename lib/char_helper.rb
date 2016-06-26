module CharHelper
	def self.parse password
		if password.to_s.empty?
			return {
				'types_count' => 0,
				'words_count' => 0
			}
		end
		password = password.to_s
		types = 0
		words = 0
		
		alpha_matches = password.scan /[A-Za-z]+/
		if alpha_matches.size > 0
			types += 1
			words += alpha_matches.size
		end
	
		numeric_matches = password.scan /[0-9]+/
		if numeric_matches.size > 0
			types += 1
			words += numeric_matches.size
		end
		
		blanks_matches = password.scan /\s+/
		if blanks_matches.size > 0
			types += 1
			words += blanks_matches.size
		end
		
		others_matches = password.scan /[^A-Za-z0-9\s]+/
		if others_matches.size > 0
			types += 1
			words += others_matches.size
		end
		
		{
			'types_count' => types,
			'words_count' => words
		}
	end
end
