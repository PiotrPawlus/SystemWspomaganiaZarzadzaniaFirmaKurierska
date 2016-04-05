require 'test_helper'

class PackageTest < ActiveSupport::TestCase
  test "the_count_of_packages" do
    package = create(:package)
    assert_equal(Package.count, 1)
  end
end
