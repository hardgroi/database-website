class DashboardController < ApplicationController
  def home
    if current_user.nil?
      redirect_to new_user_session_path
    end
  end
end
