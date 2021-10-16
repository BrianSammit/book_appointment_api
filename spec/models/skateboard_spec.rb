require 'rails_helper'

RSpec.describe Skateboard, type: :model do
  
  describe 'associations' do
    it { should have_many(:appointments)}
  
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:brand) }

  end

  describe 'validations' do
    
    it "is valid with valid attribute " do
      skate =  Skateboard.new(brand: 'Element', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg")
      expect(skate).to be_valid
    end

    it "is not valid with without brand" do
      skate =  Skateboard.new(brand: nil, image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg")
      expect(skate).to_not be_valid
    end

    it "is not valid with  without image" do
      skate =  Skateboard.new(brand: 'Element', image: nil)
      expect(skate).to_not be_valid
    end

  end

end

