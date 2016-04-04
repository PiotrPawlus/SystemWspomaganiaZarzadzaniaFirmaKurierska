class User < ActiveRecord::Base
  has_secure_password
  belongs_to :warehouse
  belongs_to :dispatcher_office
end
