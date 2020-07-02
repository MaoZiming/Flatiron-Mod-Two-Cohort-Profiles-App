class CohortsController < ApplicationController

    def index
      @cohorts = Cohort.all
      if User.find(session[:user_id]).nil? || User.find(session[:user_id]).profile.nil?
        redirect_to '/profiles/new'
      end
    end
  
    def show
      @cohort = Cohort.find(params[:id])
      if User.find(session[:user_id]).nil? || User.find(session[:user_id]).profile.nil?
        redirect_to '/profiles/new'
      end
    end  
  
end