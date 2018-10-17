class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def is_admin?
  #   signed_in? ? current_user.admin : false
  # end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type, :email, :password,:first_name, :last_name, :phonenum, :houseno, :shippingaddress, :city, :state, :pincode])
  end

end
