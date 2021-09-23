class AppointmentsController < ApplicationController
    def index
        appointment = Appointment.all
        render json: appointment.to_json(except: [:created_at, :updated_at], include: [{user: {only: [:username]}},{skateboard: {only: [:brand]}}])
    end

    def show
        appointment = Appointment.find(params[:id])
        render json:  appointment.to_json(except: [:created_at, :updated_at], include: [{user: {only: [:username]}},{skateboard: {only: [:brand]}}])
    end
end
