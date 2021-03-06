class Package < ActiveRecord::Base
  belongs_to :order

  validates :weight, :size_X, :size_Y, :size_Z,
    :name_of_recipient, :surname_of_recipient, :city_delivery, :street_delivery, :house_number_delivery, :postcode_delivery,
    :city_sender, :street_sender, :house_number_sender, :postcode_sender, :phone_delivery, :phone_sender, :cost,
    presence: true

  validates :weight,
          numericality: { only_float: true }

  validates :size_X,
          numericality: { only_float: true }

  validates :size_Y,
          numericality: { only_float: true }

  validates :size_Z,
          numericality: { only_float: true }

  validates :name_of_recipient,
          length: { minimum: 1, maximum: 50, :message => "Imie adresata musi zawierać od 1 do 50 znaków."}

  validates :surname_of_recipient,
          length: { minimum: 1, maximum: 50, :message => "Nazwisko adresata musi zawierać od 1 do 50 znaków."}

  validates :city_delivery,
          length: { minimum: 1, maximum: 50, :message => "Adres magazynu musi zawierać od 1 do 50 znaków."}

  validates :street_delivery,
          length: { minimum: 1, maximum: 50, :message => "Ulica dla magazynu musi zawierać od 1 do 50 znaków."}

  validates :house_number_delivery,
          length: { minimum: 1, maximum: 10, :message => "Numer domu dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :local_number_delivery,
          length: { minimum: 0, maximum: 10, :message => "Numer lokalu dla magazynu musi zawierać od 0 do 10 znaków."}

  validates :postcode_delivery,
          length: { minimum: 1, maximum: 10, :message => "Kod pocztowy dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :city_sender,
          length: { minimum: 1, maximum: 50, :message => "Adres magazynu musi zawierać od 1 do 50 znaków."}

  validates :street_sender,
          length: { minimum: 1, maximum: 50, :message => "Ulica dla magazynu musi zawierać od 1 do 50 znaków."}

  validates :house_number_sender,
          length: { minimum: 1, maximum: 10, :message => "Numer domu dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :local_number_sender,
          length: { minimum: 0, maximum: 10, :message => "Numer lokalu dla magazynu musi zawierać od 0 do 10 znaków."}

  validates :postcode_sender,
          length: { minimum: 1, maximum: 10, :message => "Kod pocztowy dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :phone_delivery,
          numericality: { only_integer: true },
          length: { minimum: 7, maximum: 10, :message => "Zły numer telefonu nadającego"}

  validates :phone_sender,
          numericality: { only_integer: true },
          length: { minimum: 7, maximum: 10, :message => "Zły numer telefonu odbiorcy"}

  validates :cost,
          numericality: { only_float: true }


end
