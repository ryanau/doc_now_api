class BookingsController < ApplicationController
  def create
    sanitized_params = booking_params
    sanitized_params.tap {|sp| sp[:doctor_id] = sp[:doctor_id].to_i }
    booking = Booking.create!(sanitized_params)

    DMailer.booking_summary(booking).deliver_now

    render_json_response(201, resource: { booking_number: booking.booking_number })
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :phone, :hkid, :doctor_id)
  end
end

