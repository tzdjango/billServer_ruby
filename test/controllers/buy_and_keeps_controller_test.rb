require 'test_helper'

class BuyAndKeepsControllerTest < ActionController::TestCase
  setup do
    @buy_and_keep = buy_and_keeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buy_and_keeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buy_and_keep" do
    assert_difference('BuyAndKeep.count') do
      post :create, buy_and_keep: { cost: @buy_and_keep.cost, skyStore_id: @buy_and_keep.skyStore_id, title: @buy_and_keep.title }
    end

    assert_redirected_to buy_and_keep_path(assigns(:buy_and_keep))
  end

  test "should show buy_and_keep" do
    get :show, id: @buy_and_keep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buy_and_keep
    assert_response :success
  end

  test "should update buy_and_keep" do
    patch :update, id: @buy_and_keep, buy_and_keep: { cost: @buy_and_keep.cost, skyStore_id: @buy_and_keep.skyStore_id, title: @buy_and_keep.title }
    assert_redirected_to buy_and_keep_path(assigns(:buy_and_keep))
  end

  test "should destroy buy_and_keep" do
    assert_difference('BuyAndKeep.count', -1) do
      delete :destroy, id: @buy_and_keep
    end

    assert_redirected_to buy_and_keeps_path
  end
end
