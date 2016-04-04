class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier
end
