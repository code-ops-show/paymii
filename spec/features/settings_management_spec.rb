require 'rails_helper'

feature "System Settings" do 
  fixtures :settings

  let(:setting) { settings(:setting_1) }

  scenario "User should be able to view settings" do 
    visit settings_path

    expect(page).to have_text("Company")
    expect(page).to have_text("Address")
  end
end