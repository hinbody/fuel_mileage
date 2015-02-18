require 'rails_helper'

RSpec.feature "Creating Vehicles" do
  scenario "A user can create a new vehicle do" do
    visit "/"

    click_link "New Vehicle"

    fill_in "Name", with: "Truck"
    fill_in "Make", with: "Chevy"
    fill_in "Model", with: "Colorado"
    fill_in "Year", with: "2006"
    fill_in "Engine Type", with: "v6"
    click_button "Create Vehicle"

    expect(page).to have_content("Vehicle has been created.")
  end
end
