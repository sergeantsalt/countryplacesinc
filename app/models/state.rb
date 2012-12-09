class State < ActiveRecord::Base
  attr_accessible :mc_name, :name

  has_many :listings

end
