require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

	test "make new listing" do 
		https!
		get "/listings/new"
		assert_response :success		

		assert_equal '/listings/new', path
		assert_equal nil, flash[:notice]

		https!(false)
		get ""
		assert_response :success
		assert assigns(:listings)
	end
end
