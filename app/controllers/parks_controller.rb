class ParksController < ApplicationController

	def index
		@parks = Park.all
		@players = Player.all
	end

	def new
		@parks = Park.new
	end

	def show
		@parks = Park.find(params[:id])
	end

	def create
		@parks = Park.create(name: params[:park][:name], street: params[:park][:street], city: params[:park][:city], state: params[:park][:state], zip: params[:park][:zip], nets: params[:park][:nets], opening_time: params[:park][:opening_time], closing_time: params[:park][:closing_time])
		redirect_to parks_path
	end

	def edit
		@parks = Park.find(params[:id])
	end

	def update
		@parks = Park.find(params[:id])
		@parks.update(name: params[:park][:name], street: params[:park][:street], city: params[:park][:city], state: params[:park][:state], zip: params[:park][:zip], nets: params[:park][:nets], opening_time: params[:park][:opening_time], closing_time: params[:park][:closing_time])
		redirect_to parks_path
	end

	def destroy
		@parks = Park.find(params[:id])
		@parks.destroy
		redirect_to parks_path
	end

end
