require 'test_helper'

class AddOrderToShippingAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_order_to_shipping_address = add_order_to_shipping_addresses(:one)
  end

  test "should get index" do
    get add_order_to_shipping_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_add_order_to_shipping_address_url
    assert_response :success
  end

  test "should create add_order_to_shipping_address" do
    assert_difference('AddOrderToShippingAddress.count') do
      post add_order_to_shipping_addresses_url, params: { add_order_to_shipping_address: { order_id: @add_order_to_shipping_address.order_id } }
    end

    assert_redirected_to add_order_to_shipping_address_url(AddOrderToShippingAddress.last)
  end

  test "should show add_order_to_shipping_address" do
    get add_order_to_shipping_address_url(@add_order_to_shipping_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_order_to_shipping_address_url(@add_order_to_shipping_address)
    assert_response :success
  end

  test "should update add_order_to_shipping_address" do
    patch add_order_to_shipping_address_url(@add_order_to_shipping_address), params: { add_order_to_shipping_address: { order_id: @add_order_to_shipping_address.order_id } }
    assert_redirected_to add_order_to_shipping_address_url(@add_order_to_shipping_address)
  end

  test "should destroy add_order_to_shipping_address" do
    assert_difference('AddOrderToShippingAddress.count', -1) do
      delete add_order_to_shipping_address_url(@add_order_to_shipping_address)
    end

    assert_redirected_to add_order_to_shipping_addresses_url
  end
end
