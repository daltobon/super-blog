class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    unless current_user = user.post
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end
