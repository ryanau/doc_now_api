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

require 'rails_helper'

RSpec.describe Doctor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
