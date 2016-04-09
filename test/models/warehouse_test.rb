require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase
  test "the_count_of_warehouses" do
    user = create(:warehouse)
    assert_equal(Warehouse.count, 1)
  end

  test "should save warehouse" do
    warehouse = build(:warehouse)
    assert warehouse.save, "Not saved the warehouse"
  end

  test "should not save warehouse without name" do
    warehouse = build(:warehouse, name: "")
    assert_not warehouse.save, "Saved the warehouse where name characters count less than 1"
  end

  test "should not save warehouse where name cout more than 50" do
    warehouse = build(:warehouse, name: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not warehouse.save
  end

  test "should not save warehouse without city" do
    warehouse = build(:warehouse, city: "")
    assert_not warehouse.save
  end

  test "should not save warehouse where city cout more than 50" do
    warehouse = build(:warehouse, city: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not warehouse.save
  end


  test "should not save warehouse without street" do
    warehouse = build(:warehouse, street: "")
    assert_not warehouse.save
  end

  test "should not save warehouse where street cout more than 50" do
    warehouse = build(:warehouse, street: "testtesttesttesttesttesttesttesttesttesttesttesttest")
    assert_not warehouse.save
  end

  test "should not save warehouse without house number" do
    warehouse = build(:warehouse, house_number: "")
    assert_not warehouse.save
  end

  test "should not save warehouse where house number cout more than 10" do
    warehouse = build(:warehouse, house_number: "testtesttest")
    assert_not warehouse.save
  end

  test "should save warehouse without local number" do
    warehouse = build(:warehouse, local_number: "")
    assert warehouse.save
  end

  test "should not save warehouse where local number cout more than 10" do
    warehouse = build(:warehouse, local_number: "testtesttest")
    assert_not warehouse.save
  end

  test "should not save warehouse without postcode" do
    warehouse = build(:warehouse, postcode: "")
    assert_not warehouse.save
  end

  test "should not save warehouse where postcode cout more than 10" do
    warehouse = build(:warehouse, postcode: "testtesttest")
    assert_not warehouse.save
  end

  test "should not save warehouse where capacity is not number" do
    warehouse = build(:warehouse, capacity: "zero")
    assert_not warehouse.save
  end

end
