require 'test_helper'

class ShoppingCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shopping_carts_show_url
    assert_response :success
  end

  test "should get add" do
    get shopping_carts_add_url
    assert_response :success
  end

  test "should get remove" do
    get shopping_carts_remove_url
    assert_response :success
  end

end
