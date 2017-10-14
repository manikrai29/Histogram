require 'test_helper'

class CourseesControllerTest < ActionController::TestCase
  setup do
    @coursee = coursees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coursees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursee" do
    assert_difference('Coursee.count') do
      post :create, coursee: { course_id: @coursee.course_id, description: @coursee.description }
    end

    assert_redirected_to coursee_path(assigns(:coursee))
  end

  test "should show coursee" do
    get :show, id: @coursee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursee
    assert_response :success
  end

  test "should update coursee" do
    patch :update, id: @coursee, coursee: { course_id: @coursee.course_id, description: @coursee.description }
    assert_redirected_to coursee_path(assigns(:coursee))
  end

  test "should destroy coursee" do
    assert_difference('Coursee.count', -1) do
      delete :destroy, id: @coursee
    end

    assert_redirected_to coursees_path
  end
end
