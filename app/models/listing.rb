class Listing < ActiveRecord::Base
  attr_accessible :acres, :address, :city, :county, :description, :featured, :hits, :latitude, :longitude, :postcode, :price, :short_description, :state, :street, :street_num, :title

  has_many :images
  belongs_to :state

end
