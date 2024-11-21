require "test_helper"

class HeadersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get headers_index_url
    assert_response :success
  end

  test "should get show" do
    get headers_show_url
    assert_response :success
  end

  test "should get create" do
    get headers_create_url
    assert_response :success
  end

  test "should get update" do
    get headers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get headers_destroy_url
    assert_response :success
  end
end
