require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  test "the count of clients" do
    client = create(:client)
    assert_equal(Client.count, 1)
  end

  test "should save client" do
    client = build(:client)
    assert client.save, "Not saved the client"
  end

  test "Should not save client without email" do
    client = build(:client, email: "")
    assert_not client.save, "Not saved the client without address email"
  end

  test "Should not save client with wrong email" do
    client = build(:client, email: "test@")
    assert_not client.save, "Saved client with 'test@' address email."
  end

  test "Should not save client with too long email" do
    client = build(:client, email: "testtesttesttesttesttesttesttesttesttest@klientkuriera.com")
    assert_not client.save, "Saved client with too long address email"
  end

  test "Should not get password from db for client" do
    client = create(:client)
    assert_not Client.find(client.id).password, "Password is saved for client"
  end

  test "Should not save client without password" do
    client = build(:client, password: "", password_confirmation: "")
    assert_not client.save, "Saved client with blank password"
  end

  test "Should not save client with diffrent passwords" do
    client = build(:client, password: "test", password_confirmation: "123123")
    assert_not client.save, "Saved client with diffrent passwords"
  end

  test "Should not save client without connfirmation the password" do
    client = build(:client, password: "test")
    assert_not client.save, "Saved client without connfirmation"
  end

  test "should not save client without name" do
    client = build(:client, name: "")
    assert_not client.save, "Saved the client where name characters count less than 1"
  end

  test "should not save client where name cout more than 50" do
    client = build(:client, name: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not client.save
  end

  test "should not save client without surname" do
    client = build(:client, surname: "")
    assert_not client.save, "Saved the client where surname characters count less than 1"
  end

  test "should not save client where surname cout more than 50" do
    client = build(:client, surname: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not client.save
  end

  test "Should not save client without phone number" do
    client = build(:client, phone: "")
    assert_not client.save, "Saved client without phone number"
  end

  test "Should not save client with too long phone number" do
    client = build(:client, phone: "50050050050")
    assert_not client.save, "Saved client with too long phone number"
  end

  test "Should not save client with too short phone number" do
    client = build(:client, phone: "500500")
    assert_not client.save, "Saved client with to short phone number"
  end

end
