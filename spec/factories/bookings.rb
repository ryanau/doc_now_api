# == Schema Information
#
# Table name: bookings
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  phone          :string           not null
#  hkid           :string
#  booking_number :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :booking do
    
  end
end
