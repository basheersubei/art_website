require 'spec_helper'

describe "artworks/new" do
  before(:each) do
    assign(:artwork, stub_model(Artwork,
      :title => "MyString",
      :artist_id => 1
    ).as_new_record)
  end

  it "renders new artwork form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artworks_path, "post" do
      assert_select "input#artwork_title[name=?]", "artwork[title]"
      assert_select "input#artwork_artist_id[name=?]", "artwork[artist_id]"
    end
  end
end
