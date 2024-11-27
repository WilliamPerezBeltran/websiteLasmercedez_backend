require "test_helper"

class Api::V1::ImagesFakeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_images_fake_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_images_fake_show_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_images_fake_delete_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_images_fake_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_images_fake_update_url
    assert_response :success
  end
end
