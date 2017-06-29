# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  english_name    :string           not null
#  chinese_name    :string
#  phone           :string           not null
#  chinese_address :string
#  address         :string
#  lat             :float
#  lng             :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'faker'

FactoryGirl.define do
  factory :doctor do
    english_name { Faker::Name.name }
    chinese_name '習近平'
    phone { Faker::Number.number(8) }
    address { Faker::Address.street_address }
    chinese_address '香港中環14號'
  end
end
