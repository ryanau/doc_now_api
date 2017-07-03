class DMailer < ApplicationMailer
  default from: 'email@mail.doctornow.io'

  def booking_summary(booking)
    @booking = booking
    @doctor = booking.doctor
    mail(
      to: 'ryan.au852@gmail.com',
      subject: "Booking summary: #{@booking.name} | #{booking.phone} | #{@booking.booking_number}",
    )
  end
end