class DMailer < ApplicationMailer
  default from: 'email@mail.doctornow.io'

  def booking_summary(booking)
    @booking = booking
    @doctor = booking.doctor
    mail(
      to: 'doctornowio@gmail.com',
      subject: "Booking summary: #{@booking.name} | #{booking.phone} | #{@booking.booking_number}",
    )
  end
end
