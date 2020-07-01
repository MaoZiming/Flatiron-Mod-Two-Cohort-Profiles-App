class SessionsController < ApplicationController

    def new

    end

    def create
        byebug

    end

    def destroy
        session.delete(:user_id)
        redirect_to "/login"
    end
end
