class Order < ActiveRecord::Base
  has_many :package, :dependent=> :destroy
  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier
  belongs_to :client

  validates :order_number, :status, :warehouse_id, :dispatcher_office_id, :courier_id, :client_id, presence: true

  validates :order_number,
          numericality: { only_integer: true }

  validates :status,
          length: { minimum: 1, maximum: 80, :message => "Status musi zawierać od 1 do 80 znaków."}



end
