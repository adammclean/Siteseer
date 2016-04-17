class Location < ActiveRecord::Base
  geocoded_by :address
  # By default uses Google Maps API
  after_validation :geocode


  def gmaps4rails_infowindow
   "<h1>#{Location.address}</h1>"
  end

  def gmaps4rails_title
      "<h3>#{Location.address}</h3>"
  end
end
