class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_bike
  	@current_bike = Bike.find_by(params[:id])
  end
  	helper_method :current_bike

  def box_is_checked?
    @bike.safe.tire_pressure == 1
  end
    helper_method :box_is_checked
end
