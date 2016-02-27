require 'test_helper'

class CallChargesControllerTest < ActionController::TestCase
  setup do
    @call_charge = call_charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call_charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call_charge" do
    assert_difference('CallCharge.count') do
      post :create, call_charge: { bill_id: @call_charge.bill_id, total: @call_charge.total }
    end

    assert_redirected_to call_charge_path(assigns(:call_charge))
  end

  test "should show call_charge" do
    get :show, id: @call_charge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call_charge
    assert_response :success
  end

  test "should update call_charge" do
    patch :update, id: @call_charge, call_charge: { bill_id: @call_charge.bill_id, total: @call_charge.total }
    assert_redirected_to call_charge_path(assigns(:call_charge))
  end

  test "should destroy call_charge" do
    assert_difference('CallCharge.count', -1) do
      delete :destroy, id: @call_charge
    end

    assert_redirected_to call_charges_path
  end
end
