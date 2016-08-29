require 'test_helper'

class CourseControllerTest < ActionController::TestCase
  test "should get courselist" do
    get :courselist
    assert_response :success
  end

  test "should get timelist" do
    get :timelist
    assert_response :success
  end

  test "should get memberlist" do
    get :memberlist
    assert_response :success
  end

  test "should get joincourse" do
    get :joincourse
    assert_response :success
  end

end
