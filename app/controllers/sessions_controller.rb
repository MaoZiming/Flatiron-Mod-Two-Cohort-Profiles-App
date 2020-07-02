class SessionsController < ApplicationController

    skip_before_action :authenticated, only: [:new, :create]

    def new

    end

    def create
        # byebug
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            # byebug
            if !@user.profile
                redirect_to '/profiles/new'
            else
                redirect_to '/profiles/show'
            end
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to "/login"
    end
end
