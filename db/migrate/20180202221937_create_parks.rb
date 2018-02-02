class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|

    	t.string :name 
    	t.string :street 
    	t.string :city
    	t.string :state 
    	t.integer :zip
    	t.datetime :opening_time
    	t.datetime :closing_time
    	t.boolean :nets

      t.timestamps
    end
  end
end
