require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    user = create(:user)
    get(:edit, {'id' => user.id})
    assert_response :success
  end

  test "should get show" do
    user = create(:user)
    get(:show, {'id' => user.id})
    assert_response :success
  end

  test "should get destroy" do
    user = create(:user)
    get(:destroy, {'id' => user.id})
    assert_response :success
  end

end
