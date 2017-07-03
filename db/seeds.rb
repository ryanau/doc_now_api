require 'faker'

1.upto(10).each do |n|
  Doctor.create(
    english_name: Faker::Name.first_name,
    chinese_name: "習近平#{n} hk",
    phone: Faker::Number.number(8),
    address: Faker::Address.street_address,
    chinese_address: "香港中環#{n}號",
    lat: "22.2#{Faker::Number.number(5)}".to_f,
    lng: "114.1#{Faker::Number.number(5)}".to_f,
  )
end

1.upto(10).each do |n|
  Doctor.create(
    english_name: Faker::Name.first_name,
    chinese_name: "習近平#{n} sf",
    phone: Faker::Number.number(8),
    address: Faker::Address.street_address,
    chinese_address: "香港中環#{n}號",
    lat: "37.7#{Faker::Number.number(5)}".to_f,
    lng: "-122.4#{Faker::Number.number(5)}".to_f,
  )
end

1.upto(10).each do |n|
  Doctor.create(
    english_name: Faker::Name.first_name,
    chinese_name: "習近平#{n} la",
    phone: Faker::Number.number(8),
    address: Faker::Address.street_address,
    chinese_address: "香港中環#{n}號",
    lat: "34.12#{Faker::Number.number(5)}".to_f,
    lng: "-118.11#{Faker::Number.number(5)}".to_f,
  )
end
