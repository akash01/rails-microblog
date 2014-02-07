require 'spec_helper'

describe "Static Page" do # this line is description string and can be anything

	subject { page } # makes page varibale int this test block

	describe "Home Page" do  # this line is description string and can be anything
	  before { visit home_path } 
	  it { should have_content('Sample App') }
	  it { should have_title('') }
	  it { should_not have_title(' | Homes') }
	end

	describe "Help Page" do
	  before { visit help_path } 
	  it { should have_content('Help') }
	  it { should have_title('Help') }
	end

	describe "About" do
	  before { visit about_path } 
	  it { should have_content('About') }
	  it { should have_title('About') }
	end

	#describe "Contact" do
		
	#	it "should have the content 'Contact'" do
	#		visit contact_path
	#		expect(page).to have_content('Contact')
	#	end
	#	it "should have the title 'Contact'" do
	#		visit contact_path
	#		expect(page).to have_title(' | Contact')
	#	end
	#end

	# or optmised
	#describe "Contact" do
	#	before { visit contact_path}
	#	it "should have the content 'Contact'" do
	#		expect(page).to have_content('Contact')
	#	end
	#	it "should have the title 'Contact'" do
	#		expect(page).to have_title(' | Contact')
	#	end
	#end

	# best optimised
	describe "Contact page" do
		before { visit contact_path }
		it { should have_content('Contact') }
		it { should have_title('Contact') }
   		
	end

end

