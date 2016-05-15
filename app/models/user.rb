class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :warehouse
  belongs_to :dispatcher_office
  belongs_to :courier

  validates :email, :password, :password_confirmation, :name, :surname, :birth_date, presence: true

  validates :email,
          email: true,
          length: { minimum: 1, maximum: 50, :message => "Email musi zawierać od 1 do 50 znaków."}

  validates :name,
          length: { minimum: 1, maximum: 50, :message => "Imię musi zawierać od 1 do 50 znaków."}

  validates :surname,
          length: { minimum: 1, maximum: 50, :message => "Nazwisko musi zawierać od 1 do 50 znaków."}
end
