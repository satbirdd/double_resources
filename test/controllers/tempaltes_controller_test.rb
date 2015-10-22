require 'test_helper'

class TempaltesControllerTest < ActionController::TestCase
  setup do
    @tempalte = tempaltes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempaltes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempalte" do
    assert_difference('Tempalte.count') do
      post :create, tempalte: { description: @tempalte.description, filename: @tempalte.filename, name: @tempalte.name }
    end

    assert_redirected_to tempalte_path(assigns(:tempalte))
  end

  test "should show tempalte" do
    get :show, id: @tempalte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tempalte
    assert_response :success
  end

  test "should update tempalte" do
    patch :update, id: @tempalte, tempalte: { description: @tempalte.description, filename: @tempalte.filename, name: @tempalte.name }
    assert_redirected_to tempalte_path(assigns(:tempalte))
  end

  test "should destroy tempalte" do
    assert_difference('Tempalte.count', -1) do
      delete :destroy, id: @tempalte
    end

    assert_redirected_to tempaltes_path
  end
end
