require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase
  test "the_count_of_warehouses" do
    warehouse = create(:warehouse)
    assert_equal(Warehouse.count, 1)
  end

  test "null_warehouses" do
    assert_equal(Warehouse.count, 0)
  end
end
