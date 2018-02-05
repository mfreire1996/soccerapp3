class Pickup < ApplicationRecord
	belongs_to :parks
	has_many :players, through: :player_pickup
end
