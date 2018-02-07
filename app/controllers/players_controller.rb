class PlayersController < ApplicationController

	def index
		@player = Player.all
		@parks = Park.all
	end

	def new
		@player = Player.new
	end

	def show
		@player = Player.find(params[:id])
	end

	def create
		@player = Player.create(user_id: params[:player][:user_id], first_name: params[:player][:first_name], last_name: params[:player][:last_name], position: params[:player][:position], favorite_team: params[:player][:favorite_team], extra_equipment: params[:player][:extra_equipment], bio: params[:player][:bio])
		redirect_to players_path
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])
		@player.update(first_name: params[:player][:first_name], last_name: params[:player][:last_name], position: params[:player][:position], favorite_team: params[:player][:favorite_team], extra_equipment: params[:player][:extra_equipment], bio: params[:player][:bio])
		redirect_to players_path
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to players_path
	end
	
end


