if Role.count < 1
  Role.create([
    { name: 'traveler', description: 'Traveler' },
    { name: 'travel_agent', description: 'Travel Agent' }
  ])
end

if User.count < 1
  User.create([
    {
      name: 'Traveler1',
      email: 'traveler1@mail.com',
      address: 'Jl. Raya Pangandaran',
      phone_number: '+6285123123123',
      role_id: Role.traveler.id,
      password: 'asdfasdf',
      password_confirmation: 'asdfasdf'
    },
    {
      name: 'Traveler Agent1',
      email: 'traveler_agent1@mail.com',
      address: 'Jl. Raya Pangandaran',
      phone_number: '+6282123123123',
      role_id: Role.travel_agent.id,
      password: 'asdfasdf',
      password_confirmation: 'asdfasdf'
    }
  ])
end

if Trip.count < 1
  1.upto(15) do |i|
    start_time = Faker::Time.forward(days: 10 + i)
    Trip.create({
      start_time: start_time,
      end_time: start_time + 2.days,
      destination: Faker::Address.city,
      last_booking_time: start_time - 5.days,
      meeting_point: Faker::Address.street_name,
      user: User.find_by_role_id(Role.travel_agent.id),
      minimum_person: Faker::Number.between(from: 1, to: 5),
      maximum_person: Faker::Number.between(from: 10, to: 20)
    })
  end
end

if PaymentStatus.count < 1
  PaymentStatus.create([
    { name: 'Pending', status_code: '1' },
    { name: 'Down Payment', status_code: '2' },
    { name: 'Success', status_code: '3' },
    { name: 'Canceled', status_code: '4' }
  ])
end
