class ProfilesController < ApplicationController
    
    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)

        # byebug
    
        if  @user.valid?
          @profile.save
          byebug
          redirect_to @profile
        else
          redirect_to "/signup"
        end
    end

    def show

    end

    def profile_params
        params.permit(:name, :age, :bio, :cohort, :major, :city, :university)
    end
        

end