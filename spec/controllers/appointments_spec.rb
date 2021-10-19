require 'rails_helper'

RSpec.describe Appointment, type: :request do
  before(:each) do
    @user = User.create(username: Faker::Name.name, email: 'brian12@gmail.com', password: 'asdfasdf')
    @skate = Skateboard.create(brand: 'Element', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg')
  end

  describe 'Appointmet Api' do
    it 'return response succes' do
      get '/appointments'

      expect(response).to have_http_status(:success)
    end

    it 'return all the appointments' do
      Appointment.create(
        start_date: Time.parse('Nov 22 2021 0:00'),
        end_date: Time.parse('Nov 23 2021 0:00'),
        city: 'Bogota',
        user_id: @user.id,
        skateboard_id: @skate.id
      )
      Appointment.create(
        start_date: Time.parse('Nov 22 2021 0:00'),
        end_date: Time.parse('Nov 23 2021 0:00'),
        city: 'Bogota',
        user_id: @user.id,
        skateboard_id: @skate.id
      )
      Appointment.create(
        start_date: Time.parse('Nov 22 2021 0:00'),
        end_date: Time.parse('Nov 23 2021 0:00'),
        city: 'Bogota',
        user_id: @user.id,
        skateboard_id: @skate.id
      )
      Appointment.create(
        start_date: Time.parse('Nov 22 2021 0:00'),
        end_date: Time.parse('Nov 23 2021 0:00'),
        city: 'Bogota',
        user_id: @user.id,
        skateboard_id: @skate.id
      )

      get '/appointments'

      expect(JSON.parse(response.body).size).to eq(4)
    end

    it 'return all the skates' do
      Appointment.create(id: 1, start_date: Time.parse('Nov 22 2021 0:00'), end_date: Time.parse('Nov 23 2021 0:00'),
                         city: 'Bogota', user_id: @user.id, skateboard_id: @skate.id)

      get '/appointments/1'

      expect(JSON.parse(response.body).size).to eq(8)
    end

    describe 'Post /appointments' do
      it 'return all the skates' do
        post '/appointments'

        expect(response).to have_http_status(:ok)
      end
    end
  end
end
