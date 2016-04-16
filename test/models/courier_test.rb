require 'test_helper'

class CourierTest < ActiveSupport::TestCase

  test "should_save_courier" do
    courier = build(:courier)
    assert courier.save, "Not saved the courier"
  end

  test "should_not_save_courier_without_name" do
    dispatcher_office = build(:courier, name: "")
    assert_not dispatcher_office.save, "Saved courier with characters of name count zero"
  end

  test "should_not_save_courier_with_too_long_name" do
    dispatcher_office = build(:courier, name: "nazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDlugaNazwaDluga")
    assert_not dispatcher_office.save, "Saved courier with characters of name more than 50"
  end

  test "should_not_save_courier_to_short_precint" do
    courier = build(:courier, precinct: "")
    assert_not courier.save, "Saved curier with zero character precinct"
  end

  test "should_not_save_too_long_precint" do
    courier = build(:courier, precinct: "ObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObreb")
    assert_not courier.save, "Saved curier with characters more than 250"
  end

end
