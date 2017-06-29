require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
  before do
    create(:doctor)
    create(:doctor)
    create(:doctor)
  end

  describe "GET #index" do
    subject { get :index }

    it "returns a success response" do
      expect(controller).to receive(:render_json_response).with(200, {
        resource: Doctor.all,
      })
      subject
      expect(response).to be_success
    end
  end
end
