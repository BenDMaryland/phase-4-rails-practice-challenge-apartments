class ApartmentsController < ApplicationController

    def index
      apartments =   Apartment.all

      render json: apartments 
    end

    def update
        apartment=   find_apartment
        apartment.update!(apartment_params)
        render json: apartment
    end
    def show 
        apartment=    find_apartment
        render json: apartment
    end

    def destroy
        apartment=    find_apartment
        apartment.destroy!
        render json: no_head
    end

    def create
        apartment= Apartment.create!(apartment_params)
        render json: apartment
    end


    private

    def find_apartment
     Apartment.find(params[:id])
    end

    def apartment_params
        params.permit(:number)
    end

end
