require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get add" do
    get main_add_url
    assert_response :success
  end

  test "should get update" do
    get main_update_url
    assert_response :success
  end

  test "should get details" do
    get main_details_url
    assert_response :success
  end

  test "should get delete" do
    get main_delete_url
    assert_response :success
  end
end
