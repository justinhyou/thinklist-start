# /tests/integration/routes_test.rb
require 'test_helper'

class ListingRoutesTest < ActionController::TestCase
  test "should route to listing" do
    assert_routing '/listings/1', { controller: "listings", action: "show", id: "1" }
  end
 
  test "should route to create listings" do
    assert_routing({ method: 'post', path: '/listings' }, { controller: "listings", action: "create" })
  end
  
end