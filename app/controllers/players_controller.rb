class PlayersController < ApplicationController

	def index
		@players = Player.all
		@parks = Park.all

	end

	def show
		@players = Player.find(params[:id])
	end

	def new
		@players = Player.new
	end

	def create
		@players = Player.create(user_id: params[:user_id], first_name: params[:player][:first_name], last_name: params[:player][:last_name], position: params[:player][:position], favorite_team: params[:player][:favorite_team], extra_equipment: params[:player][:extra_equipment], bio: params[:player][:bio])
		redirect_to players_path
	end

	def edit
		@players = Player.find(params[:id])
	end

	def update
		@players = Player.find(params[:id])
		@players.update(first_name: params[:player][:first_name], last_name: params[:player][:last_name], position: params[:player][:position], favorite_team: params[:player][:favorite_team], extra_equipment: params[:player][:extra_equipment], bio: params[:player][:bio])
		redirect_to players_path
	end

	def destroy
		@players = Player.find(params[:id])
		@players.destroy
		redirect_to players_path
	end
	
	
end
