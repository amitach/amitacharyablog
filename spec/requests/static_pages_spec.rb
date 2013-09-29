require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Amit Acharya" }

    subject { page }
    describe "HelpPages " do
      before { visit help_path }
      it {should have_content("help")}
      it {should have_title("#{base_title} | Help")}
    end

    subject { page }
    describe "AboutPage" do
     before {visit about_path}
     it {should have_content("about")}
     it {should have_title("#{base_title} | About")}
   end

   subject{ page }
   describe "Contact page" do
    before{ visit contact_path}
    it{ should have_content("Contact")}
    it{ should have_title("#{base_title} | Contact")}
  end

  subject {page}
  describe "home page" do
    before { visit root_path}
    it {should have_content("Amit")}
    it {should  have_title("#{base_title}")}
    it {should_not have_content("| Home")}
  end
end

