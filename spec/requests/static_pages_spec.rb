require 'spec_helper'

describe "Static page" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }	
  
  describe "Home page" do

    it "should have the content 'First App'" do
      visit '/static_page/home'
      expect(page).to have_content('First App')
    end

    it "should have the title 'Home'" do
      visit '/static_page/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_page/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_page/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_page/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_page/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

	describe "Contact page" do

		it "should have the content 'Contact'" do
			visit '/static_page/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the title 'Contact'" do
			visit '/static_page/contact'
			expect(page).to have_title("#{base_title}  | Contact")
		end
	end
end