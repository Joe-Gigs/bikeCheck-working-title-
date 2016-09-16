class SafetyChecksController < ApplicationController

	def index
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

	def update
		@safe_params = SafetyCheck.find(params[:id])
	end

	private

	def safe_params
		params.require(:safety_check).permit(:bike_id,:quick_release,:wheels_spin_right,:brakes,:chain,:tools,:tire_pressure,:tire_tread)
	end
end
