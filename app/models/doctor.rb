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

class Doctor < ApplicationRecord
  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng

  has_many :bookings

  validates :english_name, uniqueness: true
  validates :chinese_name, uniqueness: true
end
