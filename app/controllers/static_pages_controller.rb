class StaticPagesController < ApplicationController
  def home
    @listings = Listing.limit(10)
  end

  def financing
  end

  def about
  end

  def contact
  end
end
