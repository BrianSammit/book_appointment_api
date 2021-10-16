require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'associations' do
    it { should have_many(:appointments)}
    it { should have_secure_password}
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:email) }
  end

  it "is valid with valid attributes" do
    user = User.new(username: 'Brian', email: 'brian@gmail.com', password: 'asdfasdf')
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user = User.new(username: 'Brian', email: nil, password: 'asdfasdf')
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = User.new(username: 'Brian', email: 'brian@gmail.com', password: nil)
    expect(user).to_not be_valid
  end

end

