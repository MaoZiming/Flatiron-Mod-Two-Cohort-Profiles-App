class UsersController < ApplicationController

    skip_before_action :authenticated
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        # byebug
    
        if  @user.valid?
          @user.save
          # byebug
          session[:user_id] = @user.id
          redirect_to '/show'
        else
          redirect_to "/signup"
        end
    end

    def show
      @user = User.find(session[:user_id])
    end

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
        

end