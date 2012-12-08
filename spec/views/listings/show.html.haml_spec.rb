require 'spec_helper'

describe "listings/show" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :street_num => "Street Num",
      :street => "Street",
      :title => "Title",
      :short_description => "MyText",
      :description => "MyText",
      :city => "City",
      :state => 1,
      :postcode => "Postcode",
      :county => "County",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :address => "Address",
      :price => "9.99",
      :acres => 1.5,
      :hits => 2,
      :featured => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Num/)
    rendered.should match(/Street/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/City/)
    rendered.should match(/1/)
    rendered.should match(/Postcode/)
    rendered.should match(/County/)
    rendered.should match(/Latitude/)
    rendered.should match(/Longitude/)
    rendered.should match(/Address/)
    rendered.should match(/9.99/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
