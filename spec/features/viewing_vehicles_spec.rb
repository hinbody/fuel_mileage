require 'rails_helper'

RSpec.feature "Viewing vehicles" do
  scenario "a user can view a vehicle" do
    vehicle = FactoryGirl.create(:vehicle, name: "My truck")
    visit vehicles_path
    click_link "My truck"
    expect(page.current_url).to eql(vehicle_url(vehicle))
    expect(page).to have_content("My truck")
  end
end
