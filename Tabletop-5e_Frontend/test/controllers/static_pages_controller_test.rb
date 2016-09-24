require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get table" do
    get :table
    assert_response :success
    assert_select "title", "Tabletop | Tabletop5e"
  end

  test "should get page table with text circle" do
    get :table
    assert_select "h7", "Circle"
  end
end
