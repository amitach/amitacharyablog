require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Amit Acharya Blog" }
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('home')
    end
  end



describe "HelpPages" do
	describe "GET /static_pages" do
		it "should get the help static page" do
			visit '/static_pages/help'
			expect(page).to have_content('help')
		end
	end
end



describe "AboutPage" do
	describe "GET /static_pages" do
		it "should get the about page" do
			visit '/static_pages/about'
			expect(page).to have_content('about')
		end
	end
end



describe "AboutPage" do
	describe "GET /static_pages" do
		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title} | Home")
		end
	end
end

 describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end