class CohortsController < ApplicationController

    def index
      @cohorts = Cohort.all
    end
  
    def show
      @cohorts = Cohort.find(params[:id])
    end  
  
end