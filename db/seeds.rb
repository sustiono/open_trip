if Trip.count < 1
  1.upto(10) do |i|
    start_time = Faker::Time.forward(days: 10 + i)
    Schedule.create({
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
