class HomeController < ApplicationController

def index
		@players = Player.all
		@parks = Park.all
		@pickups = Pickup.all
	end

	def show
		@players = Player.find(params[:id])
		@parks = Park.find(params[:id])
	end

	def new

	end

	def create

	end

	def edit
		@homes = User.find(params[:id])
	end

	def update
		@homes = User.find(params[:id])
		@homes.update(user_params)
		redirect_to home_path
	end

	def destroy
		@homes = User.find(params[:id])
		@homes.destroy
		redirect_to home_path
	end


end
