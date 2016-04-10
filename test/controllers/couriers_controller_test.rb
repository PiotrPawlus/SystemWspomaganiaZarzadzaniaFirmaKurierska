require 'test_helper'

class CouriersControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success, "Cannot get a index"
    assert_not_nil assigns(:couriers)
  end

  test "should get new" do
    get :new
    assert_response :success, "Cannot get a new"
  end

  test "should get edit" do
    courier = create(:courier)
    get( :edit, {'id' => courier.id})
    assert_response :success, "Cannot get an edit"
  end

  test "should get show" do
    courier = create(:courier)
    get( :show, {'id' => courier.id})
    assert_response :success, "Cannot get a show"
  end

  test "should get destroy" do
    courier = create(:courier)
    get( :destroy, {'id' => courier.id})
    assert_response :success, "Cannot get destroy"
  end

end
