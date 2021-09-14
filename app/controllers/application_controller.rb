class ApplicationController < ActionController::API
  include ActionController::Cookies

  private def current_member
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  class LoginRequired < StandardError; end

  private def login_required
    raise LoginRequired unless current_member
  end
end
