class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def current_bike
  	@current_bike = Bike.find_by(params[:id])
  end
  	helper_method :current_bike

  def bike_is_safe
    @bike.safety_check.quick_release === true && @bike.safety_check.wheels_spin_right == true && @bike.safety_check.brakes == true && @bike.safety_check.chain == true && @bike.safety_check.tools == true && @bike.safety_check.tire_pressure == true && @bike.safety_check.tire_tread == true
  end
    helper_method :bike_is_safe

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname])
  end
end
