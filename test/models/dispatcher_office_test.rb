require 'test_helper'

class DispatcherOfficeTest < ActiveSupport::TestCase

  test "should_save_dispatcher_office" do
    dispatcher_office = build(:dispatcher_office)
    assert dispatcher_office.save, "No saved the Dispatcher Office"
  end

  test "should_not_save_dispatcher_office_without_name" do
    dispatcher_office = build(:dispatcher_office, name: "")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of name count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_name" do
    dispatcher_office = build(:dispatcher_office, name: "nazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDluga")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of name more than 100"
  end

  test "should_not_save_dispatcher_office_without_city" do
    dispatcher_office = build(:dispatcher_office, city: "")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of city count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_city" do
    dispatcher_office = build(:dispatcher_office, city: "nazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwa")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of city more than 50"
  end

  test "should_not_save_dispatcher_office_without_street" do
    dispatcher_office = build(:dispatcher_office, street: "")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of street count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_street" do
    dispatcher_office = build(:dispatcher_office, street: "nazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwa")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of street more than 50"
  end

  test "should_not_save_dispatcher_office_without_house_number" do
    dispatcher_office = build(:dispatcher_office, house_number: "")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of house_number count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_house_number" do
    dispatcher_office = build(:dispatcher_office, house_number: "1000010000a")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of house_number more than 10"
  end

  test "should_save_dispatcher_office_without_local_number" do
    dispatcher_office = build(:dispatcher_office, local_number: "")
    assert dispatcher_office.save, "Not saved dispatcher offices with characters of local_number count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_local_number" do
    dispatcher_office = build(:dispatcher_office, local_number: "1000010000a")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of local_number more than 10"
  end

  test "should_not_save_dispatcher_office_without_postcode" do
    dispatcher_office = build(:dispatcher_office, postcode: "")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of postcode count zero"
  end

  test "should_not_save_dispatcher_office_with_too_long_postcode" do
    dispatcher_office = build(:dispatcher_office, postcode: "1000010000a")
    assert_not dispatcher_office.save, "Saved dispatcher offices with characters of postcode more than 10"
  end

end
