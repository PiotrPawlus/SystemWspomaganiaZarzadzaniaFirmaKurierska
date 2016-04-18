class User < ActiveRecord::Base
  has_secure_password
  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier

  validates :email, :password, :password_confirmation, :name, :surname, :birth_date, :position, presence: true


  validates :email,
          email: true,
          length: { minimum: 1, maximum: 50, :message => "Email musi zawierać od 1 do 50 znaków."}

  validates :password,
          length: { minimum: 1, maximum: 50, :message => "Hasło musi zawierać od 1 do 50 znaków."}

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Imię musi zawierać od 1 do 50 znaków."}

  validates :surname,
          length: { minimum: 1, maximum: 50, :message => "Nazwisko musi zawierać od 1 do 50 znaków."}

  validates :position,
          length: { minimum: 1, maximum: 100, :message => "Pozycja musi zawierać od 1 do 50 znaków."}


end
