class Meeseek < ActiveRecord::Base
  # specifying the attribute we want Geocoder to convert
  geocoded_by :address
  # sends request to external API (default: Google Maps API) if address field changes
  after_validation :geocode, :if => :address_changed?
end
