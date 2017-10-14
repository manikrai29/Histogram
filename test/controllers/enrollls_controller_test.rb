require 'test_helper'

class EnrolllsControllerTest < ActionController::TestCase
  setup do
    @enrolll = enrollls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrollls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolll" do
    assert_difference('Enrolll.count') do
      post :create, enrolll: { course_id: @enrolll.course_id, lettergrade: @enrolll.lettergrade, percentage: @enrolll.percentage, student_id: @enrolll.student_id }
    end

    assert_redirected_to enrolll_path(assigns(:enrolll))
  end

  test "should show enrolll" do
    get :show, id: @enrolll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolll
    assert_response :success
  end

  test "should update enrolll" do
    patch :update, id: @enrolll, enrolll: { course_id: @enrolll.course_id, lettergrade: @enrolll.lettergrade, percentage: @enrolll.percentage, student_id: @enrolll.student_id }
    assert_redirected_to enrolll_path(assigns(:enrolll))
  end

  test "should destroy enrolll" do
    assert_difference('Enrolll.count', -1) do
      delete :destroy, id: @enrolll
    end

    assert_redirected_to enrollls_path
  end
end
