class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :authenticate_user!
before_filter :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  [:first_name, :last_name, :start_weight, :goal_weight, :about, :user_image].each do |field|
    devise_parameter_sanitizer.for(:sign_up) << field
    devise_parameter_sanitizer.for(:account_update) << field
  end
end

def after_sign_in_path_for(resource)
  user_path(current_user.id)
end



end
