class AttractionsController < ApplicationController 

    def index
        @attractions = Attraction.all
    end

    def new
        @attraction = Attraction.new
    end

    def create
        @attraction = Attraction.find_or_create_by(attraction_params)
        if @attraction
            redirect_to attraction_path(@attraction)
        else
            render :new 
        end
    end

    def show
        @attraction = Attraction.find(params[:id])
    end 

    def edit 
        @attraction = Attraction.find(params[:id])
    end

    def update
        @attraction = Attraction.find(params[:id])
        @attraction.update(attraction_params)
        redirect_to attraction_path(@attraction)
    end



    
    private 

    def attraction_params
        params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
    end

end