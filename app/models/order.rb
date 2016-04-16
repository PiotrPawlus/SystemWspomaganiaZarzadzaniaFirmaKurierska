class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier
  belongs_to :client

  validates :order_number, :status, presence: true

  validates :order_number,
          length: { minimum: 16, maximum: 16, :message => "Number zamówienia musi zawierać 16 znaków."}

  validates :status,
          length: { minimum: 1, maximum: 80, :message => "Status musi zawierać od 1 do 80 znaków."}



end
