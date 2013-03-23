require 'spec_helper'

#feature "Static pages" do

feature "Home page" do

  scenario "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_text('Sample App')
  end
end
#end

feature "Help page" do

  scenario "should have the content 'Sample App'" do
    visit '/static_pages/help'
    expect(page).to have_text('Sample App')
  end
end

#require 'spec_helper'
#
#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end