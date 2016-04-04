class Courier < ActiveRecord::Base
  has_many :orders, :dependent=> :destroy
  has_many :users, :dependent=> :destroy
end
