require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the count of users" do
    user = create(:user)
    assert_equal(User.count, 1)
  end

  test "should save user" do
    user = build(:user)
    assert user.save, "Not saved the user"
  end

  test "Should not save user without email" do
    user = build(:user, email: "")
    assert_not user.save, "Not saved the user without address email"
  end

  test "Should not save user with wrong email" do
    user = build(:user, email: "test@")
    assert_not user.save, "Saved user with 'test@' address email."
  end

  test "Should not save user with too long email" do
    user = build(:user, email: "testtesttesttesttesttesttesttesttesttest@uzytkownik.com")
    assert_not user.save, "Saved user with too long address email"
  end

  test "Should not get password from db" do
    user = create(:user)
    assert_not User.find(user.id).password, "Password is saved"
  end

  test "Should not save without password" do
    user = build(:user, password: "", password_confirmation: "")
    assert_not user.save, "Saved with blank password"
  end

  test "Should not save with diffrent passwords" do
    user = build(:user, password: "test", password_confirmation: "123123")
    assert_not user.save, "Saved with diffrent passwords"
  end

  test "Should not save without connfirmation the password" do
    user = build(:user, password: "test")
    assert_not user.save, "Saved without connfirmation"
  end

  test "should not save user without name" do
    user = build(:user, name: "")
    assert_not user.save, "Saved the user where name characters count less than 1"
  end

  test "should not save user where name cout more than 50" do
    user = build(:user, name: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not user.save
  end

  test "should not save user without surname" do
    user = build(:user, surname: "")
    assert_not user.save, "Saved the user where surname characters count less than 1"
  end

  test "should not save user where surname cout more than 50" do
    user = build(:user, surname: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not user.save
  end

  test "should not save user without birth date" do
    user = build(:user, birth_date: "")
    assert_not user.save, "Saved the user without birth date"
  end

  test "should not save user where birthdate is not date" do
    user = build(:user, birth_date: "To nie jest data")
    assert_not user.save
  end

  test "should not save user without position" do
    user = build(:user, position: "")
    assert_not user.save, "Saved the user where position characters count less than 1"
  end

  test "Should not save user where position cout more than 100" do
    user = build(:user, position: "PozycjaPracownikaToDziwnaSprawaPozycjaPracownikaToDziwnaSprawaPozycjaPracownikaToDziwnaSprawaPozycjaPracownikaToDziwnaSprawaPozycjaPracownikaToDziwnaSprawa")
    assert_not user.save, "Saved the user with too long position"
  end

  test "Should save an user as admin" do
    user = create(:is_admin)
    assert User.find(user.id).is_admin, "User is not a administrator"
  end

  test "Should save an user as dispatcher office employee" do
    user = create(:is_dispather)
    assert User.find(user.id).is_dispather, "User is not a dispatcher office employee"
  end

  test "Should save an user as courier employee" do
    user = create(:is_courier)
    assert User.find(user.id).is_courier, "User is not a courier employee"
  end

  test "Should save an user as warehouse employee" do
    user = create(:is_warehouse)
    assert User.find(user.id).is_warehouse, "User is not a warehouse employee"
  end

  test "Should save an user as all possible employee" do
    user = create(:employee)
    user_id = User.find(user.id)
    assert user_id.is_admin
    assert user_id.is_dispather
    assert user_id.is_courier
    assert user_id.is_warehouse
  end

end
