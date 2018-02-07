class Player < ApplicationRecord
	belongs_to :user
	has_many :pickup, through: :player_pickup
end

