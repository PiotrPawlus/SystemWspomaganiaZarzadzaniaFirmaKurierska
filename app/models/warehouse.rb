class Warehouse < ActiveRecord::Base
  has_many :orders, :dependent=> :destroy
  has_many :users, :dependent=> :destroy

  validates :name, :city, :street, :house_number, :postcode, :capacity, presence: true

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Nazwa magazynu musi zawierać od 1 do 50 znaków."}

  validates :city,
          length: { minimum: 1, maximum: 50, :message => "Adres magazynu musi zawierać od 1 do 50 znaków."}


  validates :street,
          length: { minimum: 1, maximum: 50, :message => "Ulica dla magazynu musi zawierać od 1 do 50 znaków."}

  validates :house_number,
          length: { minimum: 1, maximum: 10, :message => "Numer domu dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :local_number,
          length: { minimum: 0, maximum: 10, :message => "Numer lokalu dla magazynu musi zawierać od 0 do 10 znaków."}

  validates :postcode,
          length: { minimum: 1, maximum: 10, :message => "Kod pocztowy dla magazynu musi zawierać od 1 do 10 znaków."}

  validates :capacity,
          numericality: { only_integer: true }


end
