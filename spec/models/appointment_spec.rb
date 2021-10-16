require 'rails_helper'

RSpec.describe Appointment, type: :model do
    before(:each) do
        @user = User.create(username: Faker::Name.name, email: 'brian12@gmail.com', password: 'asdfasdf')
        @skate =  Skateboard.create(brand: 'Element', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg")
      end


  describe 'associations' do
    it { should belong_to(:user)}
    it { should belong_to(:skateboard)}
   
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:city) } 
    it { should validate_presence_of(:user_id) } 
    it { should validate_presence_of(:skateboard_id) } 

  end

  describe 'validations' do
    it "is valid with valid attributes" do
      appointment =  Appointment.create(start_date: Time.parse('Nov 22 2021 0:00'), end_date: Time.parse('Nov 23 2021 0:00'), city: 'Bogota', user_id: @user.id, skateboard_id: @skate.id)
      expect(appointment).to be_valid
    end

    it "is not valid without start date " do
      appointment =  Appointment.create(start_date: nil, end_date: Time.parse('Nov 23 2021 0:00'), city: 'Bogota', user_id: @user.id, skateboard_id: @skate.id)
      expect(appointment).to_not be_valid
    end

    it "is not valid without end date" do
      appointment =  Appointment.create(start_date: Time.parse('Nov 22 2021 0:00'), end_date: nil, city: 'Bogota', user_id: @user.id, skateboard_id: @skate.id)
      expect(appointment).to_not be_valid
    end

    it "is not valid without city" do
      appointment =  Appointment.create(start_date: Time.parse('Nov 22 2021 0:00'), end_date: Time.parse('Nov 23 2021 0:00'), city: nil, user_id: @user.id, skateboard_id: @skate.id)
      expect(appointment).to_not be_valid
    end

    it "is not valid without user id" do
      appointment =  Appointment.create(start_date: Time.parse('Nov 22 2021 0:00'), end_date: Time.parse('Nov 23 2021 0:00'), city: 'Bogota', user_id: nil, skateboard_id: @skate.id)
      expect(appointment).to_not be_valid
    end

    it "is not valid without skate id" do
      appointment =  Appointment.create(start_date: Time.parse('Nov 22 2021 0:00'), end_date: Time.parse('Nov 23 2021 0:00'), city: 'Bogota', user_id: @user.id, skateboard_id: nil)
      expect(appointment).to_not be_valid
    end

  end
end

