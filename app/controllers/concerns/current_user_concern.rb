module CreateUserConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
  end

  def set_current_user
    # Like using Devise. This is checking if the current user has an user id
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
