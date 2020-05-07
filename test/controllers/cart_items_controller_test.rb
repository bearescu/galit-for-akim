require 'test_helper'

class CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get cart_items_controller_url
    assert_response :success
  end

end
