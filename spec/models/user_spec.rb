require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_secure_password }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:email) }
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
      expect(user).to be_valid
    end

    it 'is not valid without an email' do
      user = User.new(username: Faker::Name.name, email: nil, password: Faker::Internet.password)
      expect(user).to_not be_valid
    end

    it 'is not valid without an password' do
      user = User.new(username: Faker::Name.name, email: Faker::Internet.email, password: nil)
      expect(user).to_not be_valid
    end

    it 'is not valid without an username' do
      user = User.new(username: nil, email: Faker::Internet.email, password: Faker::Internet.password)
      expect(user).to_not be_valid
    end
  end
end
