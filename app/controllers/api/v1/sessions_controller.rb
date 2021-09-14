module Api
  module V1
    class SessionsController < ApplicationController
      def create
        user = User.find_by(name: params[:name])
        if user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: { status: 'SUCCESS', message: 'Session start', data: user }
        else
          render json: { status: 'FAILED', message: 'Invalid password' }
        end
      end

      def destroy
        session.delete(:user_id)
        render json: { status: 'SUCCESS', message: 'Session terminated' }
      end
    end
  end
end
