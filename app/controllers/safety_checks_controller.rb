class SafetyChecksController < ApplicationController

	def new
		@safety_check = SafetyCheck.new
	end

	def create
		@safety_check = SafetyCheck.new(safe_params)
		@safety_check.save
	end

	def alert
		@safety_check = SafetyCheck.find(params[:id])
	end

	private

	def safe_params
		params.require(:safety_check).permit(:alert)
	end
end
