class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
  belongs_to :warehouse
end
