require 'test_helper'

class PackageTest < ActiveSupport::TestCase
  test "the_count_of_packages" do
    package = create(:package)
    assert_equal(Package.count, 1)
  end

  test "should_save_package" do
    package = build(:package)
    assert package.save, "Not saved the package"
  end

  test "should_not_save_package_without_weight" do
    package = build(:package, weight: "")
    assert_not package.save, "Saved package without weight"
  end

  test "should_not_save_package_with_weight_as_not_float" do
    package = build(:package, weight: "TESTY")
    assert_not package.save, "Saved package with weight as not float"
  end

  test "should_not_save_package_without_size_X" do
    package = build(:package, size_X: "")
    assert_not package.save, "Saved package without size_X"
  end

  test "should_not_save_package_with_size_X_as_not_float" do
    package = build(:package, size_X: "TESTY")
    assert_not package.save, "Saved package with size_X as not float"
  end

  test "should_not_save_package_without_size_Y" do
    package = build(:package, size_Y: "")
    assert_not package.save, "Saved package without size_Y"
  end

  test "should_not_save_package_with_size_Y_as_not_float" do
    package = build(:package, size_Y: "TESTY")
    assert_not package.save, "Saved package with size_Y as not float"
  end

  test "should_not_save_package_without_size_Z" do
    package = build(:package, size_Z: "")
    assert_not package.save, "Saved package without size_Z"
  end

  test "should_not_save_package_with_size_Z_as_not_float" do
    package = build(:package, size_Z: "TESTY")
    assert_not package.save, "Saved package with size_Z as not float"
  end


  test "should_not_save_package_without_name_of_recipient" do
    package = build(:package, name_of_recipient: "")
    assert_not package.save, "Saved package without name_of_recipient"
  end

  test "should_not_save_package_with_too_long_name_of_recipient" do
    package = build(:package, name_of_recipient: "AndrzejAndrzejAndrzejAndrzejAndrzejAndrzejAndrzejAndrzejAndrzej")
    assert_not package.save, "Saved package without too long name_of_recipient"
  end

  test "should_not_save_package_without_surname_of_recipient" do
    package = build(:package, surname_of_recipient: "")
    assert_not package.save, "Saved package without surname_of_recipient"
  end

  test "should_not_save_package_with_too_long_surname_of_recipient" do
    package = build(:package, surname_of_recipient: "SurnameSurnameSurnameSurnameSurnameSurnameSurnameSurname")
    assert_not package.save, "Saved package with too long surname_of_recipient"
  end

  test "should_not_save_package_without_city_delivery" do
    package = build(:package, city_delivery: "")
    assert_not package.save, "Saved package without city_delivery"
  end

  test "should_not_save_package_with_too_long_city_delivery" do
    package = build(:package, city_delivery: "CityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCity")
    assert_not package.save, "Saved package with too long city_delivery"
  end

  test "should_not_save_package_without_street_delivery" do
    package = build(:package, street_delivery: "")
    assert_not package.save, "Saved package without street_delivery"
  end

  test "should_not_save_package_with_too_long_street_delivery" do
    package = build(:package, street_delivery: "StreetDeliveryStreetDeliveryStreetDeliveryStreetDeliveryStreetDeliveryStreetDelivery")
    assert_not package.save, "Saved package with too long street_delivery"
  end

  test "should_not_save_package_without_house_number_delivery" do
    package = build(:package, house_number_delivery: "")
    assert_not package.save, "Saved package without house_number_delivery"
  end

  test "should_not_save_package_with_too_long_house_number_delivery" do
    package = build(:package, house_number_delivery: "200ab200ab2")
    assert_not package.save, "Saved package with too long house_number_delivery"
  end

  test "should_save_package_without_local_number_delivery" do
    package = build(:package, local_number_delivery: "")
    assert package.save, "Not saved package without local_number_delivery"
  end

  test "should_not_save_package_with_too_long_local_number_delivery" do
    package = build(:package, local_number_delivery: "localnumber1")
    assert_not package.save, "Saved package with too long local_number_delivery"
  end

  test "should_not_save_package_without_postcode_delivery" do
    package = build(:package, postcode_delivery: "")
    assert_not package.save, "Saved package without postcode_delivery"
  end

  test "should_not_save_package_with_too_long_postcode_delivery" do
    package = build(:package, postcode_delivery: "30-023023023")
    assert_not package.save, "Saved package with too long postcode_delivery"
  end

  test "should_not_save_package_without_city_sender" do
    package = build(:package, city_sender: "")
    assert_not package.save, "Saved package without city_sender"
  end

  test "should_not_save_package_with_too_long_city_sender" do
    package = build(:package, city_sender: "CityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCityCity")
    assert_not package.save, "Saved package with too long city_sender"
  end

  test "should_not_save_package_without_street_sender" do
    package = build(:package, street_sender: "")
    assert_not package.save, "Saved package without street_sender"
  end

  test "should_not_save_package_with_too_long_street_sender" do
    package = build(:package, street_sender: "StreetDeliveryStreetDeliveryStreetDeliveryStreetDeliveryStreetDeliveryStreetDelivery")
    assert_not package.save, "Saved package with too long street_sender"
  end

  test "should_not_save_package_without_house_number_sender" do
    package = build(:package, house_number_sender: "")
    assert_not package.save, "Saved package without house_number_sender"
  end

  test "should_not_save_package_with_too_long_house_number_sender" do
    package = build(:package, house_number_sender: "200ab200ab2")
    assert_not package.save, "Saved package with too long house_number_sender"
  end

  test "should_save_package_without_local_number_sender" do
    package = build(:package, local_number_sender: "")
    assert package.save, "Not saved package with local_number_sender"
  end

  test "should_not_save_package_with_too_long_local_number_sender" do
    package = build(:package, local_number_sender: "localnumber1")
    assert_not package.save, "Saved package with too long local_number_sender"
  end

  test "should_not_save_package_without_postcode_sender" do
    package = build(:package, postcode_sender: "")
    assert_not package.save, "Saved package without postcode_sender"
  end

  test "should_not_save_package_with_too_long_postcode_sender" do
    package = build(:package, postcode_sender: "30-023023023")
    assert_not package.save, "Saved package with too long postcode_sender"
  end

  test "should_not_save_package_without_phone_sender" do
    package = build(:package, phone_sender: "")
    assert_not package.save, "Saved package without phone_sender"
  end

  test "should_not_save_package_with_too_long_phone_sender" do
    package = build(:package, phone_sender: "50050050050")
    assert_not package.save, "Saved package with too long phone_sender"
  end

  test "should_not_save_package_with_too_short_phone_sender" do
    package = build(:package, phone_sender: "500500")
    assert_not package.save, "Saved package with to short phone_sender"
  end

  test "should_not_save_package_without_phone_delivery" do
    package = build(:package, phone_delivery: "")
    assert_not package.save, "Saved package without phone_delivery"
  end

  test "should_not_save_package_with_too_long_phone_delivery" do
    package = build(:package, phone_delivery: "50050050050")
    assert_not package.save, "Saved package with too long phone_delivery"
  end

  test "should_not_save_package_with_too_short_phone_delivery" do
    package = build(:package, phone_delivery: "500500")
    assert_not package.save, "Saved package with too short phone_delivery"
  end

  test "should_not_save_package_without_cost" do
    package = build(:package, cost: "")
    assert_not package.save, "Saved package without cost"
  end

  test "should_not_save_package_with_cost_as_not_float" do
    package = build(:package, cost: "TESTY")
    assert_not package.save, "Saved package with cost as not float"
  end

end
