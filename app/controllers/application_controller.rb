class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token # This will happen on the frontend
end
