class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :email, :password, :password_confirmation, :name, :surname, :phone, presence: true


  validates :email,
         email: true,
         length: { minimum: 1, maximum: 50, :message => "Email musi zawierać od 1 do 50 znaków."}

  validates :name,
       length: { minimum: 1, maximum: 50, :message => "Imię musi zawierać od 1 do 50 znaków."}

  validates :surname,
       length: { minimum: 1, maximum: 50, :message => "Nazwisko musi zawierać od 1 do 50 znaków."}

  validates :phone,
       numericality: { only_integer: true },
       length: { minimum: 7, maximum: 10, :message => "Zły numer telefonu"}

end
