require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end
	array1 = []
	array1[1] = 5
	array1[2] = 9
	array1[3] = 10 
	array2 = []
	array2[1] = 15
	array2[2] = 3
	array2[3] = 1 
	array3 = []
	array3[1] = 12
	array3[2] = 7
	array3[3] = 1 
	array4 = []
	array4[1] = "on"
	array4[2] = "and"
	array4[3] = 2 
	array5 = []
	array5[1] = "this"
	array5[2] = "and"
	array5[3] = 3
	array6 = []
	array6[1] = 12
	array6[2] = 7
	array6[3] = 1
	array6[4] = 16
	array6[5] = 12
	array6[6] = 7
	array7 = []
	array7[1] = 12
	array7[2] = 7
	array7[3] = 1
	array7[4] = 16
	array7[5] = 6
	array7[6] = 12
	array8 = []
	array8[1] = 12
	array8[2] = 7
	array8[3] = 1
	array8[4] = 16
	array8[5] = 6
	array8[6] = 12
	



	def test_middles
		assert_equal 9,3, @m.middles(array1[1,2,3],array2[1,2,3])
		assert_equal 9,7, @m.middles(array1[1,2,3],array2[1,2,3])
	end
	
	def test_max
		assert_equal 10, @m.max(array1[1,2,3])
		assert_equal 15, @m.max(array2[1,2,3])
		assert_equal 12, @m.max(array3[1,2,3])
	end

	def test_lucky13
		assert_equal true, @m.lucky13?(array1[1,2,3])
		assert_equal false, @m.lucky13?(array2[1,2,3])
		assert_equal false, @m.lucky13?(array3[1,2,3])
	end
	
	def test_repeat_separator
		assert_equal "onandon", @m.repeat_separator(array4[1,2,3])
		assert_equal "thisandthisandthis", @m.repeat_separator(array5[1,2,3])
	end

	def test_same_ends
		assert_equal true, @m.same_ends?(array6[1,2,3,4,5,6], 2)
		assert_equal false, @m.same_ends?(array6[1,2,3,4,5,6], 1)
		assert_equal true, @m.same_ends?(array7[1,2,3,4,5,6], 1)
		assert_equal false, @m.same_ends?(array7[1,2,3,4,5,6], 2)
	end

	def test_starry
		assert_equal true, @m.starry?("*I'll*likesweet*tarts")
		assert_equal false, @m.starry?("I'll*hatesweet*tarts")
		assert_equal true, @m.starry?("can*not")
		assert_equal false, @m.starry?("I*can't*fight*babies*")
	end

	def test_plus_it
		assert_equal true, @m.plus_it("*I'll*likesweet*tarts")
		assert_equal false, @m.plus_it("I'll*hatesweet*tarts")
		assert_equal true, @m.plus_it("can*not")
		assert_equal false, @m.plus_it("I*can't*fight*babies*")
	end







end
