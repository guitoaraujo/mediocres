require 'test_helper'

class PearlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pearl = pearls(:one)
  end

  test "should get index" do
    get pearls_url
    assert_response :success
  end

  test "should get new" do
    get new_pearl_url
    assert_response :success
  end

  test "should create pearl" do
    assert_difference('Pearl.count') do
      post pearls_url, params: { pearl: { quote: @pearl.quote, user_id: @pearl.user_id } }
    end

    assert_redirected_to pearl_url(Pearl.last)
  end

  test "should show pearl" do
    get pearl_url(@pearl)
    assert_response :success
  end

  test "should get edit" do
    get edit_pearl_url(@pearl)
    assert_response :success
  end

  test "should update pearl" do
    patch pearl_url(@pearl), params: { pearl: { quote: @pearl.quote, user_id: @pearl.user_id } }
    assert_redirected_to pearl_url(@pearl)
  end

  test "should destroy pearl" do
    assert_difference('Pearl.count', -1) do
      delete pearl_url(@pearl)
    end

    assert_redirected_to pearls_url
  end
end
