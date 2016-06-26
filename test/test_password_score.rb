require "minitest/autorun"
require "password_score"

describe PasswordScore do
	it "should keep a copy of the original text" do
		score = PasswordScore.new "12password34"

		expected = "12password34"
		actual = score.original_text
		assert_equal expected, actual
	end

	it "should replace any complete english words in text with any lower-case letters" do
		score = PasswordScore.new "12Password34"
		expected = "12password34"
		actual = score.processed_text
		assert_equal expected, actual
	end

	it "should assign the correct score for 'password1' --> 4" do
		score = PasswordScore.new "password1"
		expected = 4
		actual = score.value
		assert_equal expected, actual
	end

	it "assign the correct score for 'goat m4n' --> 15" do
		score = PasswordScore.new "goat m4n"
		expected = 15
		actual = score.value
		assert_equal expected, actual
	end

	it "assign the correct score for 's0_0per 5n4k3' --> 44" do
		score = PasswordScore.new "s0_0per 5n4k3"
		expected = 44
		actual = score.value
		assert_equal expected, actual
	end
end
