require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
  describe "GET #index" do
    subject { get :index, params: { name: 'foo', phone: 29292, hkid: 'bar' } }

    it "creates a booking and returns 200" do
      expect(Booking.count).to eq(0)
      expect(controller).to receive(:render_json_response).with(200)
      subject
      expect(Booking.count).to eq(1)
      expect(response.status).to eq(201)
    end
  end
end
