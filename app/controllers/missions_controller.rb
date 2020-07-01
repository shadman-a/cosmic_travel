class MissionsController < ApplicationController
    
    def new
        @mission = Mission.new
        @scientists = Scientist.all
        @planets = Planet.all
    end

    def create
        @mission = Mission.create(mission_params)
        redirect_to scientist_path(@mission.scientist)
    end

    private

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end
    
end


  