class AppointmentsController < ApplicationController
  def index
    appointment = Appointment.all
    render json: appointment.to_json(except: %i[created_at updated_at],
                                     include: [
                                       { user: { only: [:username] } }, { skateboard: { only: [:brand] } }
                                     ])
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment.to_json(except: %i[created_at updated_at],
                                     include: [
                                       { user: { only: [:username] } }, { skateboard: { only: [:brand] } }
                                     ])
  end

  def create
    appointment = Appointment.new(appointment_params)

    if appointment.save
      render json: appointment.to_json(except: %i[created_at updated_at],
                                       include: [
                                         { user: { only: [:username] } }, { skateboard: { only: [:brand] } }
                                       ])
    else
      render json: { status: 'ERROR', data: appointment.errors }
    end
  end

  private

  def appointment_params
    params.permit(:start_date, :end_date, :user_id, :skateboard_id, :city)
  end
end
