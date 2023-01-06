class ApplicationController < ActionController::API
	  include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	def json_response(object,status = :ok)
		render json: object, status: status
	end

  def user_not_authorized(_exception)
    render json: { error: { message: _exception } }, status: :forbidden
  end
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end
end
