require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase
  test "the_count_of_warehouses" do
    user = create(:warehouse)
    assert_equal(Warehouse.count, 1)
  end

end
