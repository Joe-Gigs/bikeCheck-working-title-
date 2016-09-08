class BikesController < ApplicationController

	def index
		@bikes = Bike.all
	end

	def new
		@bike = Bike.new
		# respond_to :js
	end

	def create
		@bike = Bike.new(bike_params)
		@bike.save
	end

	def show
		@bike = Bike.find(params[:id])
	end

	def destroy
		@bike = Bike.find(params[:id])
	end

private
	def bike_params
		params.require(:bike).permit(:name, :type, :miles)
	end
end
