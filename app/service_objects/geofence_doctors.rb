class GeofenceDoctors
  # 0.3 km
  DISTANCE = 0.3

  def initialize(origin)
    @origin = origin
    @origin_geo = Geokit::LatLng.new(origin[:lat], origin[:lng])
  end

  def nearby
    doctors = Doctor.within(DISTANCE, origin: [@origin[:lat], @origin[:lng]]).all
    with_distance = doctors.map do |d|
      hash = d.attributes
      d_geo = Geokit::LatLng.new(d["lat"], d["lng"])
      hash["distance"] = @origin_geo.distance_to(d_geo)
      hash["walk"] = (hash["distance"] * 60).ceil
      hash
    end
    with_distance.sort_by { |d| d["distance"] }
  end
end
