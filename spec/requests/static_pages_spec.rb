require 'spec_helper'

describe "StaticPages" do

   let(:base_title) { "Vegas" }

  describe "Home page" do
    it "should have the content 'Vegas' " do
      visit '/static_pages/home'
      expect(page).to have_content('Vegas')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
    it "should have the title 'Home' " do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us' " do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us' " do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

end
