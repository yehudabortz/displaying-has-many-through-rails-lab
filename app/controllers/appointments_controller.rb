class AppointmentsController < ApplicationController

    def index
    end

    def new
    end

    def create
    end

    def show
        @appointment = Appointment.find_by(id: params[:id])
    end

    def edit
    end

    def update
    end

    def delete
    end

end 