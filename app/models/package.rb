class Package < ActiveRecord::Base
  belongs_to :order

  validates :weight, :size_X, :size_Y, :size_Z, :delivery_address, :sender_address, :actual_place, :phone, :cost, presence: true

  validates :weight,
          numericality: { only_float: true }

  validates :size_X,
          numericality: { only_float: true }

  validates :size_Y,
          numericality: { only_float: true }

  validates :size_Z,
          numericality: { only_float: true }

  validates :delivery_address,
          length: { minimum: 1, maximum: 150, :message => "Adres musi zawierać maksymalnie 150 znaków."}

  validates :sender_address,
          length: { minimum: 1, maximum: 150, :message => "Adres musi zawierać maksymalnie 150 znaków."}

  validates :actual_place,
          length: { minimum: 1, maximum: 100, :message => "Miejsce paczki musi zawierać maksymalnie 100 znaków."}

  validates :phone,
          numericality: { only_integer: true },
          length: { minimum: 7, maximum: 10, :message => "Zły numer telefonu"}

  validates :cost,
          numericality: { only_float: true }


end
