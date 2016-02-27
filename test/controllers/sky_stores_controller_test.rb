require 'test_helper'

class SkyStoresControllerTest < ActionController::TestCase
  setup do
    @sky_store = sky_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sky_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sky_store" do
    assert_difference('SkyStore.count') do
      post :create, sky_store: { bill_id: @sky_store.bill_id, total: @sky_store.total }
    end

    assert_redirected_to sky_store_path(assigns(:sky_store))
  end

  test "should show sky_store" do
    get :show, id: @sky_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sky_store
    assert_response :success
  end

  test "should update sky_store" do
    patch :update, id: @sky_store, sky_store: { bill_id: @sky_store.bill_id, total: @sky_store.total }
    assert_redirected_to sky_store_path(assigns(:sky_store))
  end

  test "should destroy sky_store" do
    assert_difference('SkyStore.count', -1) do
      delete :destroy, id: @sky_store
    end

    assert_redirected_to sky_stores_path
  end
end
