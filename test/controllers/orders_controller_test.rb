require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    order = create(:order)
    get(:edit, {'id' => order.id})
    assert_response :success
  end

  test "should get show" do
    order = create(:order)
    get(:show, {'id' => order.id})
    assert_response :success
  end

  test "should get destroy" do
    order = create(:order)
    get(:destroy, {'id' => order.id})
    assert_response :success
  end
end
