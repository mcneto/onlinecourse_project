class ApplicationController < ActionController::Base

    include Pundit

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :citizen_id, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :citizen_id, :role, :instructor]) 
  end

  rescue_from Pundit::NotAuthorizedError do 
    redirect_to root_path, notice: 'You are not authorized to perform this action.'
  end
  
end
