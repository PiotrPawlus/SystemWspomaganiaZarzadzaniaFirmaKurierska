require 'test_helper'

class PackagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    package = create(:package)
    get(:edit, {'id' => package.id})
    assert_response :success
  end

  test "should get show" do
    package = create(:package)
    get(:show, {'id' => package.id})
    assert_response :success
  end

  test "should get destroy" do
    package = create(:package)
    get(:destroy, {'id' => package.id})
    assert_response :success
  end
end
