require 'csv'

class ImportDoctorSpecialty
  def self.call
    CSV.foreach('db/doctor_category.csv') do |r|
      next if r[0].to_i == 0
      doctor = Doctor.find_by(source_id: r[0].to_i)
      if doctor
        doctor.update!(specialty: r[1])
      end
    end
  end
end


