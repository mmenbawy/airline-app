class Airport < ApplicationRecord

# has_many :flights

###################################################

has_many :departure_airport_flights, class_name: "Flight", foreign_key: "departure_airport_id"
has_many :arrival_airports_flights, class_name: "Flight", foreign_key: "arrival_airport_id"

end
