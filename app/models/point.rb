class Point < ApplicationRecord
  belongs_to :walk
  #reverse_geocoded_by :longitude, :latitude
  #after_validation :reverse_geocode
end
