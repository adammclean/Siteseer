class Location < ActiveRecord::Base
  geocoded_by :address
  # By default uses Google Maps API
  after_validation :geocode
end
