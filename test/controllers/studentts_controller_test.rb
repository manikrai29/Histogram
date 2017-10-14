require 'test_helper'

class StudenttsControllerTest < ActionController::TestCase
  setup do
    @studentt = studentts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentt" do
    assert_difference('Studentt.count') do
      post :create, studentt: { email: @studentt.email, name: @studentt.name, student_id: @studentt.student_id }
    end

    assert_redirected_to studentt_path(assigns(:studentt))
  end

  test "should show studentt" do
    get :show, id: @studentt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentt
    assert_response :success
  end

  test "should update studentt" do
    patch :update, id: @studentt, studentt: { email: @studentt.email, name: @studentt.name, student_id: @studentt.student_id }
    assert_redirected_to studentt_path(assigns(:studentt))
  end

  test "should destroy studentt" do
    assert_difference('Studentt.count', -1) do
      delete :destroy, id: @studentt
    end

    assert_redirected_to studentts_path
  end
end
