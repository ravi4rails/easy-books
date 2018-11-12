class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    if admin_signed_in?
      admin_dashboard_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      root_path
    elsif resource_or_scope == :admin
      new_admin_session_path
    end
  end
  
end
