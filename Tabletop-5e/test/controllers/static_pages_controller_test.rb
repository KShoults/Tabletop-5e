require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Tabletop-5e"
  end

  test "should get table" do
    get :table
    assert_response :success
    assert_select "title", "Tabletop | Tabletop-5e"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Tabletop-5e"
  end
end
