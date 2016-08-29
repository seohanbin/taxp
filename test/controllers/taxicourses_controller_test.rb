require 'test_helper'

class TaxicoursesControllerTest < ActionController::TestCase
  setup do
    @taxicourse = taxicourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxicourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxicourse" do
    assert_difference('Taxicourse.count') do
      post :create, taxicourse: { chatlink: @taxicourse.chatlink, descript1: @taxicourse.descript1, descript2: @taxicourse.descript2, endpoint: @taxicourse.endpoint, enrolltime: @taxicourse.enrolltime, genderonly: @taxicourse.genderonly, history: @taxicourse.history, randstr: @taxicourse.randstr, startpoint: @taxicourse.startpoint, user_id: @taxicourse.user_id }
    end

    assert_redirected_to taxicourse_path(assigns(:taxicourse))
  end

  test "should show taxicourse" do
    get :show, id: @taxicourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxicourse
    assert_response :success
  end

  test "should update taxicourse" do
    patch :update, id: @taxicourse, taxicourse: { chatlink: @taxicourse.chatlink, descript1: @taxicourse.descript1, descript2: @taxicourse.descript2, endpoint: @taxicourse.endpoint, enrolltime: @taxicourse.enrolltime, genderonly: @taxicourse.genderonly, history: @taxicourse.history, randstr: @taxicourse.randstr, startpoint: @taxicourse.startpoint, user_id: @taxicourse.user_id }
    assert_redirected_to taxicourse_path(assigns(:taxicourse))
  end

  test "should destroy taxicourse" do
    assert_difference('Taxicourse.count', -1) do
      delete :destroy, id: @taxicourse
    end

    assert_redirected_to taxicourses_path
  end
end
