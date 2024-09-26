class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if current_user.doctor?
      doctor_dashboard_path
    else
      patients_path
    end
  end
end
