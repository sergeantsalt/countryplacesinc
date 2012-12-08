require 'spec_helper'

describe "listings/edit" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :street_num => "MyString",
      :street => "MyString",
      :title => "MyString",
      :short_description => "MyText",
      :description => "MyText",
      :city => "MyString",
      :state => 1,
      :postcode => "MyString",
      :county => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :address => "MyString",
      :price => "9.99",
      :acres => 1.5,
      :hits => 1,
      :featured => false
    ))
  end

  it "renders the edit listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => listings_path(@listing), :method => "post" do
      assert_select "input#listing_street_num", :name => "listing[street_num]"
      assert_select "input#listing_street", :name => "listing[street]"
      assert_select "input#listing_title", :name => "listing[title]"
      assert_select "textarea#listing_short_description", :name => "listing[short_description]"
      assert_select "textarea#listing_description", :name => "listing[description]"
      assert_select "input#listing_city", :name => "listing[city]"
      assert_select "input#listing_state", :name => "listing[state]"
      assert_select "input#listing_postcode", :name => "listing[postcode]"
      assert_select "input#listing_county", :name => "listing[county]"
      assert_select "input#listing_latitude", :name => "listing[latitude]"
      assert_select "input#listing_longitude", :name => "listing[longitude]"
      assert_select "input#listing_address", :name => "listing[address]"
      assert_select "input#listing_price", :name => "listing[price]"
      assert_select "input#listing_acres", :name => "listing[acres]"
      assert_select "input#listing_hits", :name => "listing[hits]"
      assert_select "input#listing_featured", :name => "listing[featured]"
    end
  end
end
