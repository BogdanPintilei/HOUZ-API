class Api::V1::BaseController < ActionController::API
    before_action :authenticate_user!
end
