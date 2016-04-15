class Client < ActiveRecord::Base
  has_secure_password
  has_many :orders, :dependent=> :destroy

  validates :email, :password, :password_confirmation, :name, :surname, :phone, presence: true


  validates :email,
          length: { minimum: 1, maximum: 50, :message => "Email musi zawierać od 1 do 50 znaków."}

  validates :password,
          length: { minimum: 1, maximum: 50, :message => "Hasło musi zawierać od 1 do 50 znaków."}

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Imię musi zawierać od 1 do 50 znaków."}

  validates :surname,
          length: { minimum: 1, maximum: 50, :message => "Nazwisko musi zawierać od 1 do 50 znaków."}

  validates :phone,
          numericality: { only_integer: true },
          length: { minimum: 7, maximum: 10, :message => "Zły numer telefonu"}







end
