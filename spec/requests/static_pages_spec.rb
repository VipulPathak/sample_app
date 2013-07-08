#---------------------------------------------------
# Integration Tests ...
#---------------------------------------------------

require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have only the base title " do
      visit '/static_pages/home'
      page.should have_selector('title',
	  		:text => "#{base_title}")
    end

    it "should NOT have the sub-title 'Home' " do
      visit '/static_pages/home'
      page.should_not have_selector('title',
	  		:text => " | Home")
    end
  end


  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the correct title 'Help' " do
      visit '/static_pages/help'
      page.should have_selector('title',
	  		:text => "#{base_title} | Help")
    end
  end


  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title 'About Us' " do
      visit '/static_pages/about'
      page.should have_selector('title',
	  		:text => "#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the correct title 'Contact' " do
      visit '/static_pages/contact'
      page.should have_selector('title',
	  		:text => "#{base_title} | Contact")
    end
  end

end

