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

class Booking < ApplicationRecord
  belongs_to :doctor

  before_create :assign_booking_number

  def assign_booking_number
    self.booking_number = SecureRandom.hex(4)
  end
end
