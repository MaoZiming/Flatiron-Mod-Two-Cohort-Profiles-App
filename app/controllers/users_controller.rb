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
          byebug
          redirect_to @user
        else
          redirect_to "/signup"
        end
    end

    def show

    end

    def user_params
        params.permit(:username, :password, :password_confirmation, :cohort_id)
    end
        

end