class Courier < ActiveRecord::Base
  has_many :orders, :dependent=> :destroy
  has_many :users, :dependent=> :destroy

  validates :precinct,
            presence: true,
            length: { minimum: 5, maximum: 100, :message => "Obręb dla kuriera musi zawierać od 5 do 100 znaków."}
end
