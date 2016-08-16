require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should have the content 'Home'" do
    get root_path
    assert_response :success
  end

  test "should have the content 'Help'" do
    get help_path
    assert_response :success
  end

  test "should have the content 'Contact'" do
    get contact_path
    assert_response :success
  end

  test "should have the content 'About'" do
    get about_path
    assert_response :success
  end
end
