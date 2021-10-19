require 'rails_helper'

RSpec.describe Skateboard, type: :request do
  describe 'Skate Api' do
    it 'return response succes' do
      get '/skateboards'

      expect(response).to have_http_status(:success)
    end

    it 'return all the skates' do
      Skateboard.create(brand: 'Element', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg')
      Skateboard.create(brand: 'Plan B', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/planb-skateboards-e1518473245980_pto7hr.jpg')
      Skateboard.create(brand: 'Girls', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/girl-skateboards-e1518473159869_qxzvhh.jpg')
      Skateboard.create(brand: 'Zero', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/zero-skateboards-e1518473189206_f7glvz.jpg')
      Skateboard.create(brand: 'Creature', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/creature-skateboards-e1518473100665_ll6ghv.jpg')
      Skateboard.create(brand: 'Blind', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/blind-skateboards-e1518473042833_mrm6hb.jpg')
      Skateboard.create(brand: 'Santa Cruz', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/skateboard-brands-santa-cruz-one_crt2bp.jpg')
      Skateboard.create(brand: 'Almost', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/almost-skateboards-e1518473068941_f2xfgd.jpg')
      Skateboard.create(brand: 'Chocolate', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/chocolate-skateboards-e1518473218644_efwi4h.jpg')
      Skateboard.create(brand: 'Flip', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/flip-skateboards-e1518473125156_w2rslz.jpg')

      get '/skateboards'

      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'return all the skates' do
      Skateboard.create(id: 1, brand: 'Element', image: 'https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg')

      get '/skateboards/1'

      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
