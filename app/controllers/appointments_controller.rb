class AppointmentsController < ApplicationController
    def index
        appointment = Appointment.all
        render json: appointment.to_json(except: [:created_at, :updated_at], include: {user: {only: [:username]}})
    end
end
