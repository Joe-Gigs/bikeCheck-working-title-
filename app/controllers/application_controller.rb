class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_bike
  	@current_bike = Bike.find_by(params[:id])
  end
  	helper_method :current_bike

  	def counter
  		i=0
  		if :add_safety_check
  			i+=1
  		end
  	end
		helper_method :counter


end
