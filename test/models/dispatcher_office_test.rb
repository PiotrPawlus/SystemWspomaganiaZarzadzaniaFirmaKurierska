require 'test_helper'

class DispatcherOfficeTest < ActiveSupport::TestCase

  test "should_save_dispatcher_office" do
    dispatcher_office = build(:dispatcher_office)
    assert dispatcher_office.save, "No saved the Dispatcher Office"
  end

end
