class DispatcherOffice < ActiveRecord::Base
  has_many :orders, :dependent=> :destroy
  has_many :users, :dependent=> :destroy

  validates :name, :city, :street, :house_number, :postcode, presence: true

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Nazwa dyspozytorni musi zawierać od 1 do 100 znaków."}

  validates :city,
          length: { minimum: 1, maximum: 50, :message => "Adres dyspozytorni musi zawierać od 1 do 50 znaków."}


  validates :street,
          length: { minimum: 1, maximum: 50, :message => "Ulica dla dyspozytorni musi zawierać od 1 do 50 znaków."}

  validates :house_number,
          length: { minimum: 1, maximum: 10, :message => "Numer domu dla dyspozytorni musi zawierać od 1 do 10 znaków."}

  validates :local_number,
          length: { minimum: 0, maximum: 10, :message => "Numer lokalu dla dyspozytorni musi zawierać od 0 do 10 znaków."}

  validates :postcode,
          length: { minimum: 1, maximum: 10, :message => "Kod pocztowy dla dyspozytorni musi zawierać od 1 do 10 znaków."}

end
