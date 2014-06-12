require 'spec_helper'

describe "artworks/edit" do
  before(:each) do
    @artwork = assign(:artwork, stub_model(Artwork,
      :title => "MyString",
      :artist_id => 1
    ))
  end

  it "renders the edit artwork form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artwork_path(@artwork), "post" do
      assert_select "input#artwork_title[name=?]", "artwork[title]"
      assert_select "input#artwork_artist_id[name=?]", "artwork[artist_id]"
    end
  end
end
