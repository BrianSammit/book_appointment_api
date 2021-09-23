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

elemnt = Skateboard.create(brand: 'Element')
plan_b = Skateboard.create(brand: 'Plan B')
girls = Skateboard.create(brand: 'Girls')
zero = Skateboard.create(brand: 'Zero')
creature = Skateboard.create(brand: 'Creature')
blind = Skateboard.create(brand: 'Blind')
santa_cruz = Skateboard.create(brand: 'Santa Cruz')
almost = Skateboard.create(brand: 'Almost')
chocolate = Skateboard.create(brand: 'Chocolate')
flip = Skateboard.create(brand: 'Flip')


Appointment.create([{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: brian.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'),
    user_id: natalia.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: esteven.id
    },{
    start_date: Time.parse('Nov 22 2021 0:00'), 
    end_date: Time.parse('Nov 23 2021 0:00'), 
    user_id: jeymmy.id}  ])