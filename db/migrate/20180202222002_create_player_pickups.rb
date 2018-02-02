class CreatePlayerPickups < ActiveRecord::Migration[5.1]
  def change
    create_table :player_pickups do |t|

    	t.integer :player_id
    	t.integer :pickup_id

      t.timestamps
    end
  end
end
