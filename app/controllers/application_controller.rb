class ApplicationController < ActionController::Base
  # фильтрация с параметром if если будет devise контроллер то configure_permitted_parameters будет выполнен, если нет то будет пропущен
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username]) 
  end 
end
