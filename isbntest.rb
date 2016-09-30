require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_valid_10_digit_isbn_returns_valid
		number = "0471958697"
		assert_equal("true", isbnlength(number))
	end

	def test_valid_13_digit_isbn_returns_valid
		number = "0471958697245"
		assert_equal("true", isbnlength(number))
	end

	def test_valid_10_digit_check_digit_returns_valid
		number = "817525766-0"
		assert_equal(true, isbnvalidator10(number))
	end

	def test_valid_10_digit_check_digit_returns_invalid
		number = "817525766-7"
		assert_equal(false, isbnvalidator10(number))
	end
	

end