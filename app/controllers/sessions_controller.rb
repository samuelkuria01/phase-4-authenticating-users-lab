class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user
        render json: user
      end
end
