require 'test_helper'

class CourierTest < ActiveSupport::TestCase

  test "should_save_courier" do
    courier = build(:courier)
    assert courier.save, "Not saved the courier"
  end

  test "should_not_save_courier_to_short_precint" do
    courier = build(:courier, precinct: "")
    assert_not courier.save, "Saved curier with zero character precinct"
  end

  test "should_not_save_too_long_precint" do
    courier = build(:courier, precinct: "ObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObrebObreb")
    assert_not courier.save, "Saved curier with characters more than 100"
  end

end
