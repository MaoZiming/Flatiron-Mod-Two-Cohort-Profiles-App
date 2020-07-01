class ProfilesController < ApplicationController
    
    def new
      
      @user = User.find(session[:user_id])
      if !@user.profile
        @profile = Profile.new
      else
        redirect_to "/profiles/show"
      end

    end

    def create


        @profile = Profile.new(profile_params)
        @profile.user = User.find(session[:user_id])
        # byebug

        if @profile.valid?
          @profile.save
          
          redirect_to '/profiles/show'
        else
          redirect_to "/profiles/new"
        end
    end

    def show
      # byebug
      @user = User.find(session[:user_id])
      @profile = @user.profile
    end

    def profile_params
        params.permit(:name, :age, :bio, :cohort_id, :major, :city, :university)
    end

    def edit
      @user = User.find(session[:user_id])
      @profile = @user.profile
    end

    def update
      @user = User.find(session[:user_id])
      @profile = @user.profile
      @profile.assign_attributes(profile_params)

      if @profile.valid?
        @profile.save
        redirect_to '/profiles/show'
      else
        redirect_to "/profiles/edit"
      end
    end
        

end