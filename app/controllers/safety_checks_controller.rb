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

	def getMessage
		@safety_check = SafetyCheck.find(params[:bike_id])
		respond_to :js
	end

	def message_update
		@safety_check = SafetyCheck.find(params[:bike_id])
		respond_to do |format|
			if @safety_check.update(safe_params)
				flash[:notice] = 'Updated'
        format.js
       else
        flash[:alert] = 'Something went wrong'
      end  
		end
	end

	private

	def safe_params
		params.require(:safety_check).permit(:bike_id,:quick_release,:wheels_spin_right,:brakes,:chain,:tools,:tire_pressure,:tire_tread)
	end
end
