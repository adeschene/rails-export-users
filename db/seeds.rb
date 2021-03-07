require 'faker'

# Set faker locale to US
Faker::Config.locale = 'en-US'

# Create 9,000 users
9000.times do
  first_name = Faker::Name.first_name
  last_name  = Faker::Name.last_name
  phone_num  = Faker::PhoneNumber.cell_phone
  address    = Faker::Address.full_address

  User.create(
    first_name: first_name,
    last_name: last_name,
    phone: phone_num,
    address: address
  )
end
