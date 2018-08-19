class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_no
      t.time :departure_time
      t.date :departure_date
      t.time :arrival_time
      t.date :arrival_date
      t.float :price
      t.integer :occupied_seats
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.integer :aircraft_id

      t.timestamps
    end
  end
end
