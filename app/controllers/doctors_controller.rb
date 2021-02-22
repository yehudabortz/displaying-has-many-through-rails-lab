class DoctorsController < ApplicationController


    def index
    end

    def new
    end

    def create
    end

    def show
        @doctor = Doctor.find_by(id: params[:id])
    end

    def edit
    end

    def update
    end

    def delete
    end
end 