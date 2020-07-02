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
      
      @user = User.find(session[:user_id])
      @profile = @user.profile
      # byebug
    end


    def edit
      @user = User.find(session[:user_id])
      @profile = @user.profile
    end

    def update
      @user = User.find(session[:user_id])
      @profile = @user.profile
      @profile.assign_attributes(profile_params)
      byebug
      if @profile.valid?
        @profile.save
        redirect_to '/profiles/show'
      else
        redirect_to "/profiles/edit"
      end
    end

    def search
      @profile = Profile.find(params[:id])
      @user = User.find(session[:user_id])
    end
        
    def recommend
      profile = Profile.find(params[:id])
      user = User.find(session[:user_id])
      user_profile = user.profile
      r = Recommendation.create(recommender_id: user_profile.id, recommendee_id: profile.id, content: params.permit(:content).require('content'))
      # byebug
      redirect_to "/profiles/#{profile.id}"
    end
      

    # def filter
      
    # end

    def profile_params
      params.permit(:name, :age, :bio, :cohort_id, :major, :city, :university, :language_id, :image)
    end
end