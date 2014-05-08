require 'spec_helper'

describe "Users" do
  describe "GET /map" do
    it "should have map content" do
      visit map_path
      page.should have_css("#map-container")
      page.should have_css("#map")
    end

    it "should navigate to the show page" do
      visit map_path
      click_link "My Locations"
      page.should have_content("Please sign in")
    end

    it "should allow you to sign in with twitter", :js => true do
      visit map_path
      find("#twitter").click
      page.should have_content("Sign Out")
    end

    it "should have a twitter feed", :js => true do
      visit map_path
      click_link "#ChiSpaceOdyssey"
      page.should have_css('div#twitter-popup', :visible => true)
    end
  end

  describe "GET /show" do
    it "should not show any locations if you aren't logged in" do
      visit show_path
      page.should have_content("Please sign in")
    end
  end
end