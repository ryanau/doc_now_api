class DoctorsController < ApplicationController
  def index
    @doctors = GeofenceDoctors.new({ lat: params['lat'], lng: params['lng'] }).nearby
    render_json_response(200, { resource: { doctors: @doctors } })
  end
end
