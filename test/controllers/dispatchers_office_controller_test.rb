require 'test_helper'

class DispatchersOfficeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    dispatcher_office = create(:dispatcher_office)
    get(:edit, {"id" => dispatcher_office.id})
    assert_response :success
  end

  test "should get show" do
    dispatcher_office = create(:dispatcher_office)
    get(:show, {'id' => dispatcher_office.id})
    assert_response :success
  end

  test "should get destroy" do
    dispatcher_office = create(:dispatcher_office)
    get(:destroy, {'id' => dispatcher_office.id})
    assert_response :success
  end

end
