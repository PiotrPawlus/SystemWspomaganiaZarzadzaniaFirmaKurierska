require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "should_save_order" do
    order = build(:order)
    assert order.save, "Not saved the order"
  end

  test "should_not_save_order_without_order_number" do
    order = build(:order, order_number: "")
    assert_not order.save, "Too short order number. Should be 16 characters"
  end

  test "should_not_save_order_with_fifteen_num_of_order_number" do
    order = build(:order, order_number: "112211221122112")
    assert_not order.save, "Too short order number. Should be 16 characters"
  end

  test "should_not_save_order_with_more_than_sixteen_num_of_order_number" do
    order = build(:order, order_number: "11221122112211221")
    assert_not order.save, "Too long order number. Should be 16 characters"
  end

end
