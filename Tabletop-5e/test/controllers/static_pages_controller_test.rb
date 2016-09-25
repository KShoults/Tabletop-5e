require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Tabletop-5e"
  end

  test "should get table" do
    get table_path
    assert_response :success
    assert_select "title", "Tabletop | Tabletop-5e"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Tabletop-5e"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Tabletop-5e"
  end
end
