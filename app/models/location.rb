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

  def gmaps4rails_marker_picture
    {
      "rich_marker" =>  "<div class='my-marker'>It works!<img height='30' width='30' src='http://farm4.static.flickr.com/3212/3012579547_097e27ced9_m.jpg'/></div>"
    }
  end

end
