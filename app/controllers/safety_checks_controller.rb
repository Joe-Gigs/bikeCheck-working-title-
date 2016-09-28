class SafetyChecksController < ApplicationController

	def index
		@bike = Bike.find(params[:bike_id])
		@safety_checks = SafetyCheck.all
	end

	def new
		@safety_check = SafetyCheck.new
	end

	def create
		@bike = Bike.find(params[:bike_id])
		@safety_check = SafetyCheck.new(safe_params)
		@safety_check.save
		respond_to :js
	end

	def show
		@safety_check = SafetyCheck.find(params[:bike_id])
		respond_to :js
	end

	def get_message
		@safety_check = SafetyCheck.find(params[:bike_id])
		respond_to :js
	end

	def message_update
		@safety_check = SafetyCheck.find(params[:bike_id])
		if @safety_check.update_attributes(safe_params)
		flash[:notice] = 'Bike updated'
		respond_to :js	
	end
end

	private

	def safe_params
		params.require(:safety_check).permit(:quick_release,:wheels_spin_right,:brakes,:chain,:tools,:tire_pressure,:tire_tread,:bike_id)
	end
end
