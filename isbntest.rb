require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_valid_10_digit_isbn_returns_valid
		number = "0471958697"
		assert_equal(true, isbn(number))
	end

	def test_valid_13_digit_isbn_returns_valid
		number = "0471958697245"
		assert_equal(true, isbn(number))
	end

end