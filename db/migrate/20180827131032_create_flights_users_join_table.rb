class CreateFlightsUsersJoinTable < ActiveRecord::Migration[5.2]
  
  def change
    
     # index for faster querying through this join:
     create_join_table :flights, :users do |t|
        t.index :flight_id
        t.index :user_id
  end

  end
end
