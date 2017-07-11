require 'csv'

class ImportDoctors
  def initialize
  end

  def call
    CSV.foreach('db/doctors.csv') do |r|
      next if r[0].to_i == 0
      Doctor.create!({
        source_id: r[0],
        phone: r[1],
        chinese_address: r[2],
        chinese_name: r[4],
        english_name: r[5],
        address: r[6],
        lat: r[7],
        lng: r[8],
      })
    end
  end
end

