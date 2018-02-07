class PickupController < ApplicationController

	def index
		@pickup = Pickup.all
		@players = Player.all
		@parks = Park.all
	end

	def show
		@pickup = Pickup.find(params[:id])
	end

	def new
		@pickup = Pickup.new
	end

	def create
		@pickup = Pickup.create(creator_id: params[:pickup][:creator_id], date_time: params[:pickup][:date_time], drink_provided: params[:pickup][:drink_provided])
		redirect_to pickup_path
	end

	def edit
		@pickup = Pickup.find(params[:id])
	end

	def update
		@pickup = Pickup.find(params[:id])
		@pickup.update(creator_id: params[:pickup][:creator_id], date_time: params[:pickup][:date_time], drink_provided: params[:pickup][:drink_provided])
		redirect_to pickup_path
	end

	def destroy
		@pickup = Pickup.find(params[:id])
		@pickup.destroy
		redirect_to pickup_path
	end
	
end
