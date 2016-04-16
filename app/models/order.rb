class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier
  belongs_to :client

  validates :order_number,
  			presence: true,
  			length: {minimum: 16, maximum: 16, :message => "Numer przesyłki musi składać się z 16 cyfr"}

end
