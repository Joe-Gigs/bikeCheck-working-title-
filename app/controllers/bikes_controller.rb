class BikesController < ApplicationController

	def index
 		@bikes = current_user.bikes	
 	end

	def new
		@bike = Bike.new
	end

	def create
    @bikes = current_user.bikes
		@bike = Bike.new(bike_params)
		respond_to do |format|
			if @bike.save
				@bike.users << current_user if current_user
				flash[:notice] = 'Your new bike has been successfully created'
        format.js
			else
				flash[:alert] = 'Bike not saved'
        format.js
      end
   	end
	end

	def show
		@bike = Bike.find(params[:id])
		respond_to :js
	end

	def update
		@bike = Bike.find(params[:id])
		@bike.update_attributes(bike_params)
		@bike.save
	end

	def destroy
		@bike = Bike.find(params[:id])
		@bike.destroy
		flash[:notice] = "Bike Deleted"
		@bikes =  current_user.bikes
		respond_to :js
	end

private
	def bike_params
		params.require(:bike).permit(:brand, :style, :mileage)
	end
end
