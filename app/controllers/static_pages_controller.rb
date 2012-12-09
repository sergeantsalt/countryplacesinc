class StaticPagesController < ApplicationController
  def home
    @listings = Listing.where( featured: true, published: true).page(params[:page]).per(5)
    @listings = @listings.order("price ASC")
  end

  def financing
  end

  def about
    @users = User.all
  end

  def contact
  end

  def download
    
  end

end
