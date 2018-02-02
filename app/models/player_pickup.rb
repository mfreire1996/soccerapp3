class PlayerPickup < ApplicationRecord
	belongs_to :players 
	belongs_to :pickup
end
