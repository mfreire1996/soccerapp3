class PlayerPickupController < ApplicationController

	def index
		@player_pickups = PlayerPickup.all
		@players = Player.all
		@parks = Park.all
	end

	def show
		@player_pickups = PlayerPickup.find(params[:id])
	end

	def new
		@player_pickups = PlayerPickup.new
	end

	def create
		@parks = Park.create(name: params[:park][:name], street: params[:park][:street], city: params[:park][:city], state: params[:park][:state], zip: params[:park][:zip], equipment: params[:park][:equipment], openingTime: params[:park][:openingTime], closingTime: params[:park][:closingTime], net: params[:park][:net])
		redirect_to player_pickups_path
	end

	def edit
		@player_pickups = PlayerPickup.find(params[:id])
		@players = Player.all
		@parks = Park.all
	end

	def update
		@players = Player.find(params[:id])
		@players.update(user_id: params[:player][:user_id],first_name: params[:player][:first_name],last_name: params[:player][:last_name], position: params[:player][:position], favoriteTeam: params[:player][:favoriteTeam], extraEquipment: params[:player][:extraEquipment], bio: params[:player][:bio])
		@parks = Park.find(params[:id])
		@parks.update(name: params[:park][:name], street: params[:park][:street], city: params[:park][:city], state: params[:park][:state], zip: params[:park][:zip], equipment: params[:park][:equipment], openingTime: params[:park][:openingTime], closingTime: params[:park][:closingTime], net: params[:park][:net])
		redirect_to player_pickups_path
	end

	def destroy
		@parks = Park.find(params[:id])
		@parks.destroy
		redirect_to player_pickups_path
	end
	
end
