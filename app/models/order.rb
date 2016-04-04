class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
end
