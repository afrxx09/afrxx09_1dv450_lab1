module Api
    module V1
        class UsersController < ApplicationController
            
            respond_to :json
            
            rescue_from ActionController::UnknownFormat, with: :bad_req
            before_action :restrict_access, except: [:index, :show]
            
            def index
                @users = User.all
                respond_with @users
            end

            def show
                @user = User.find(params[:id])
                respond_with @user
            end
            
            
        end
    end
end