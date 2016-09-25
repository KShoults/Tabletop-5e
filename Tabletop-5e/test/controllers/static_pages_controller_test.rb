require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get root route" do
    get :/
    assert_response :success
  end
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Tabletop5e"
  end

  test "should get table" do
    get :table
    assert_response :success
    assert_select "title", "Tabletop | Tabletop5e"
  end
end
