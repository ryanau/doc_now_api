class DMailer < ApplicationMailer
  default from: 'email@mail.doctornow.io'

  def booking_summary(booking, nearby_doctors)
    @booking = booking
    @doctor = booking.doctor
    @nearby_doctors = nearby_doctors
    mail(
      to: 'doctornowio@gmail.com',
      subject: "Booking summary: #{@booking.name} | #{booking.phone} | #{@booking.booking_number}",
    )
  end
end
