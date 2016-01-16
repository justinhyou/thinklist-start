require 'test_helper'

class ListingTest < ActiveSupport::TestCase

	setup :initialize_listing

	def teardown
		@listing = nil
	end

  	test "made listing" do
  		assert_instance_of Listing, @listing, "Listing is not a listing object"
		assert_not_nil @listing, "Listing is nil"
	end

	test "listing should have description" do
		assert_not_nil @listing.description, "Has no description"
		assert_equal @listing.description, "Few scratches", "Description is incorrect"
	end

	test "listing should have title" do
		assert_not_nil @listing.title, "Has no title"
		assert_match @listing.title, "Mazda 3", "Title is incorrect"
	end

	test "listing doesn't have a category yet" do
		assert_nil @listing.category, "Listing has a category before assignment"
	end

	private

		def initialize_listing
			@listing = Listing.new
			@listing.description = "Few scratches"
			@listing.category = nil 
			@listing.title = "Mazda 3"
		end
		
end