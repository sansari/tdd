require 'spec_helper'

describe "Shows" do
  it "should be able to add new shows" do
    visit "/"

    page.should have_content("Shows List")

    #click_link("New Show")
    #
    #current_path.should be(new_show_path)
    #
    #page.should have_content("New Show")
    #
    #fill_in "name", :with => "Family Guy"
    #fill_in "picture", :with => "http://somephoto.com"
    #
    #click_button "Submit"
    #
    #page.should have_content "Shows List"
    #page.should have_content "Family Guy"
    #page.should have_content "http://somephoto.com"
  end
end
