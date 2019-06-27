require 'test_helper'

class FinalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get finals_index_url
    assert_response :success
  end

  test "should get show" do
    get finals_show_url
    assert_response :success
  end

  test "should get new" do
    get finals_new_url
    assert_response :success
  end

  test "should get edit" do
    get finals_edit_url
    assert_response :success
  end

end
