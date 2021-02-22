class PatientsController < ApplicationController

    def index
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(patient_params)
        if @patine.valid?
            @patient.save
            redirect_to patient_path(@patient)
        else
            render :new
        end

    end

    def show
        @patient = Patient.find_by(id: params[:id])
    end

    def edit
    end

    def update
    end

    def delete
    end

    private 

    def patient_params
        params.require(:patient).permit(:name, :age)
    end
end 