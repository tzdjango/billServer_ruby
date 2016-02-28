require 'test_helper'

class ReadDataControllerTest < ActionController::TestCase
  setup do
    @read_datum = read_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:read_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create read_datum" do
    assert_difference('ReadDatum.count') do
      post :create, read_datum: { data: @read_datum.data }
    end

    assert_redirected_to read_datum_path(assigns(:read_datum))
  end

  test "should show read_datum" do
    get :show, id: @read_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @read_datum
    assert_response :success
  end

  test "should update read_datum" do
    patch :update, id: @read_datum, read_datum: { data: @read_datum.data }
    assert_redirected_to read_datum_path(assigns(:read_datum))
  end

  test "should destroy read_datum" do
    assert_difference('ReadDatum.count', -1) do
      delete :destroy, id: @read_datum
    end

    assert_redirected_to read_data_path
  end
end
