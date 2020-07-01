class UsersController < ApplicationController


    skip_before_action :authenticated
    
    def new
        @user = User.new
    end

    def create
        byebug
    end

    def show

    end
        

end