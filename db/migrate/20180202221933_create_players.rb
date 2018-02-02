class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|

    	t.string :first_name
    	t.string :last_name
    	t.string :position 
    	t.string :favorite_team
    	t.string :extra_equipment
    	t.string :bio 
    	t.integer :user_id

      t.timestamps
    end
  end
end
