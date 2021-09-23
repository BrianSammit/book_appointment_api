# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

brian = User.create(username: 'Brian', email: 'brian@gmail.com', password:'asdfasdf', password_confirmation: 'asdfasdf')
natalia = User.create(username: 'Natalia', email: 'natalia@gmail.com', password:'asdfasdf', password_confirmation: 'asdfasdf')
esteven = User.create(username: 'Esteven', email: 'esteven@gmail.com', password:'asdfasdf', password_confirmation: 'asdfasdf')
felipe = User.create(username: 'Felipe', email: 'felipe@gmail.com', password:'asdfasdf', password_confirmation: 'asdfasdf')
jeymmy = User.create(username: 'Jeymmy', email: 'jeymmy@gmail.com', password:'asdfasdf', password_confirmation: 'asdfasdf')

elemnt = Skateboard.create(brand: 'Element', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/element-skateboards-e1518473008825_xij1e7.jpg")
plan_b = Skateboard.create(brand: 'Plan B', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/planb-skateboards-e1518473245980_pto7hr.jpg")
girls = Skateboard.create(brand: 'Girls', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/girl-skateboards-e1518473159869_qxzvhh.jpg")
zero = Skateboard.create(brand: 'Zero', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/zero-skateboards-e1518473189206_f7glvz.jpg")
creature = Skateboard.create(brand: 'Creature', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/creature-skateboards-e1518473100665_ll6ghv.jpg")
blind = Skateboard.create(brand: 'Blind', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/blind-skateboards-e1518473042833_mrm6hb.jpg")
santa_cruz = Skateboard.create(brand: 'Santa Cruz', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434679/Skate%20brands/skateboard-brands-santa-cruz-one_crt2bp.jpg")
almost = Skateboard.create(brand: 'Almost', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/almost-skateboards-e1518473068941_f2xfgd.jpg")
chocolate = Skateboard.create(brand: 'Chocolate', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/chocolate-skateboards-e1518473218644_efwi4h.jpg")
flip = Skateboard.create(brand: 'Flip', image: "https://res.cloudinary.com/ddjesec95/image/upload/v1632434678/Skate%20brands/flip-skateboards-e1518473125156_w2rslz.jpg")


Appointment.create([{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: brian.id,
    skateboard_id: elemnt.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'),
    user_id: natalia.id,
    skateboard_id: zero.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: esteven.id,
    skateboard_id: flip.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: jeymmy.id,
    skateboard_id: santa_cruz.id }  ])
    