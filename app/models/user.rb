class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # belongs_to :flight, foreign_key: "departure_airport_id"
  # belongs_to :flight, foreign_key: "arrival_airport_id"

end
