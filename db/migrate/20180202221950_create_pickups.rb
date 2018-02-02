class CreatePickups < ActiveRecord::Migration[5.1]
  def change
    create_table :pickups do |t|

    	t.datetime :date_time
    	t.boolean :drink_provided
    	t.integer :park_id 
    	t.integer :creator_id

      t.timestamps
    end
  end
end
