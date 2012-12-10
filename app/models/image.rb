class Image < ActiveRecord::Base
  attr_accessible :filename, :listing_id, :published, :user_id, :order

  belongs_to :listing, class_name: "Listing", foreign_key: "listing_id"
  belongs_to :user, class_name: "User", foreign_key: "user_id"

end
