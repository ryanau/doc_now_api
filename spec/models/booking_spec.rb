# == Schema Information
#
# Table name: bookings
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  phone          :string           not null
#  hkid           :string
#  booking_number :string           not null
#  doctor_id      :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Booking, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
