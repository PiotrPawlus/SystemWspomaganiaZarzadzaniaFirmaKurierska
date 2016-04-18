require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    client = create(:client)
    get(:edit, {'id' => client.id})
    assert_response :success
  end

  test "should get show" do
    client = create(:client)
    get(:show, {'id' => client.id})
    assert_response :success
  end

  test "should get destroy" do
    client = create(:client)
    get(:destroy, {'id' => client.id})
    assert_response :success
  end

end
