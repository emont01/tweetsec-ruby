require "minitest/autorun"
require "char_helper"

describe CharHelper do
	#white spaces only
	it "should return 1 types count for whitespaces string" do
		expected = 1
		actual = CharHelper.parse "\t\n"
		assert_equal expected, actual['types_count']
	end

	it "should return 1 words count for whitespaces string" do
		expected = 1
		actual = CharHelper.parse "\t\n"
		assert_equal expected, actual['words_count']
	end

	# alphabetic only password
	it "should return 1 types count for alphabetic string" do
		expected = 1
		actual = CharHelper.parse "abc"
		assert_equal expected, actual['types_count']
	end

	it "should return 1 words count for alphabetic string" do
		expected = 1
		actual = CharHelper.parse "abc"
		assert_equal expected, actual['words_count']
	end

	# numeric only password
	it "should return 1 types count for numeric string" do
		expected = 1
		actual = CharHelper.parse "12345"
		assert_equal expected, actual['types_count']
	end

	it "should return 1 words count for numeric string" do
		expected = 1
		actual = CharHelper.parse "12345"
		assert_equal expected, actual['words_count']
	end

	# special case: empty string
	it "should return 0 types count for empty string" do
		expected = 0
		actual = CharHelper.parse ""
		assert_equal expected, actual['types_count']
	end

	it "should return 0 words count for empty string" do
		expected = 0
		actual = CharHelper.parse ""
		assert_equal expected, actual['words_count']
	end

	# special case: nil
	it "should return 0 types count for nil" do
		expected = 0
		actual = CharHelper.parse nil
		assert_equal expected, actual['types_count']
	end

	it "should return 0 words count for nil" do
		expected = 0
		actual = CharHelper.parse nil
		assert_equal expected, actual['words_count']
	end

	# challenge example passwords
	it "should return 2 types count for 'password1'" do
		expected = 2
		actual = CharHelper.parse "password1"
		assert_equal expected, actual['types_count']
	end

	it "should return 2 words count for 'password1'" do
		expected = 2
		actual = CharHelper.parse "password1"
		assert_equal expected, actual['words_count']
	end

	it "should return 3 types count for 'goat m4n'" do
		expected = 3
		actual = CharHelper.parse "goat m4n"
		assert_equal expected, actual['types_count']
	end

	it "should return 5 words count for 'goat m4n'" do
		expected = 5
		actual = CharHelper.parse "goat m4n"
		assert_equal expected, actual['words_count']
	end

	it "should return 4 types count for 's0_0per 5n4k3'" do
		expected = 4
		actual = CharHelper.parse "s0_0per 5n4k3"
		assert_equal expected, actual['types_count']
	end

	it "should return 11 words count for 's0_0per 5n4k3'" do
		expected = 11
		actual = CharHelper.parse "s0_0per 5n4k3"
		assert_equal expected, actual['words_count']
	end
end
