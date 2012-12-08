require 'spec_helper'

describe "listings/index" do
  before(:each) do
    assign(:listings, [
      stub_model(Listing,
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
      ),
      stub_model(Listing,
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
      )
    ])
  end

  it "renders a list of listings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street Num".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
