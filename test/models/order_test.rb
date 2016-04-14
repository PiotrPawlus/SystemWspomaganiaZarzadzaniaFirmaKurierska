require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "should_save_order" do
    order = build(:order)
    assert order.save, "Not saved the order"
  end

  test "should_not_save_order_with_one_num_of_order_number" do
    order = build(:order, order_number: 0)
    assert_not order.save, "Too short order number. Should be 4 bit"
  end

  test "should_not_save_order_with_seven_num_of_order_number" do
    order = build(:order, order_number: 1010101)
    assert_not order.save, "Too short order number. Should be 4 bit"
  end

  test "should_not_save_order_with_more_than_nine_num_of_order_number" do
    order = build(:order, order_number: 101010101)
    assert_not order.save, "Too long order number. Should be 4 bit"
  end

end
