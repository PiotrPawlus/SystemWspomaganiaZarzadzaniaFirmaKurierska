class Warehouse < ActiveRecord::Base
  has_many :orders, :dependent=> :destroy
  has_many :users, :dependent=> :destroy

  validates :name, :address, :capacity, presence: true

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Nazwa magazynu musi zawierać od 1 do 50 znaków."}

  validates :address,
          length: { minimum: 1, maximum: 100, :message => "Adres magazynu musi zawierać od 1 do 100 znaków."}

  validates :capacity,
          numericality: { only_integer: true }


end
