class DoctorsController < ApplicationController


    def index
    end

    def new
        @doctor = Doctore.new
    end

    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.valid?
            @doctor.save
            redirect_to doctor_path(@doctor)
        else
            render :new
        end
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

    private 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end 