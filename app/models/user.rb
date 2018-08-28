class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #has_and_belongs_to_many :flights
  # has_many :booking
  # has_many :flights, through: :flight_user

###################################################

has_and_belongs_to_many :flights

end
