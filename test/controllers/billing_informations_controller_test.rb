require 'test_helper'

class BillingInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_information = billing_informations(:one)
  end

  test "should get index" do
    get billing_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_billing_information_url
    assert_response :success
  end

  test "should create billing_information" do
    assert_difference('BillingInformation.count') do
      post billing_informations_url, params: { billing_information: { address_line_1: @billing_information.address_line_1, address_line_2: @billing_information.address_line_2, cc_last_four: @billing_information.cc_last_four, cc_type: @billing_information.cc_type, city: @billing_information.city, invoice_id: @billing_information.invoice_id, name: @billing_information.name, phone_number: @billing_information.phone_number, state: @billing_information.state, user_id: @billing_information.user_id, zip_code: @billing_information.zip_code } }
    end

    assert_redirected_to billing_information_url(BillingInformation.last)
  end

  test "should show billing_information" do
    get billing_information_url(@billing_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_billing_information_url(@billing_information)
    assert_response :success
  end

  test "should update billing_information" do
    patch billing_information_url(@billing_information), params: { billing_information: { address_line_1: @billing_information.address_line_1, address_line_2: @billing_information.address_line_2, cc_last_four: @billing_information.cc_last_four, cc_type: @billing_information.cc_type, city: @billing_information.city, invoice_id: @billing_information.invoice_id, name: @billing_information.name, phone_number: @billing_information.phone_number, state: @billing_information.state, user_id: @billing_information.user_id, zip_code: @billing_information.zip_code } }
    assert_redirected_to billing_information_url(@billing_information)
  end

  test "should destroy billing_information" do
    assert_difference('BillingInformation.count', -1) do
      delete billing_information_url(@billing_information)
    end

    assert_redirected_to billing_informations_url
  end
end
