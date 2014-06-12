require 'spec_helper'

describe "artworks/show" do
  before(:each) do
    @artwork = assign(:artwork, stub_model(Artwork,
      :title => "Title",
      :artist_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
  end
end
