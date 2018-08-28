class Flight < ApplicationRecord

# belongs_to :aircraft
# belongs_to :airport, foreign_key: "arrival_airport_id"
# belongs_to :airport, foreign_key: "departure_airport_id"

# has_many :booking
# has_many :flights, through: :flight_user

#has_and_belongs_to_many :users
# handling that both cant be equal?

###################################################

belongs_to :aircraft
belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"

has_and_belongs_to_many :users
end
