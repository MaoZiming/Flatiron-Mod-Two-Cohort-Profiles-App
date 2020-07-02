class UsersController < ApplicationController

    skip_before_action :authenticated, only: [:new, :create]
    
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
          redirect_to '/profiles/new'
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to "/signup"
        end
    end

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
        

end