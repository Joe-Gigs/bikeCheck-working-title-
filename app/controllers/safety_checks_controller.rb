class SafetyChecksController < ApplicationController

	def new
		@safety_check = SafetyCheck.new
	end

	def create
		@bike = Bike.find(params[:id])
		@safety_check = SafetyCheck.new(safe_params)
		@safety_check.save
	end

	def show
		@safety_check = SafetyCheck.find(params[:id])
		respond_to :js
	end

	private

	def safe_params
		params.require(:safety_check).permit(:alert,:bike_id)
	end
end
