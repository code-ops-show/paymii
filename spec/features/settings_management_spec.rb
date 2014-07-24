require 'rails_helper'

feature "System Settings" do 
  fixtures :configurables

  let(:account_setting) { configurables(:configurable_1) }
  let(:company_setting) { configurables(:configurable_2) }

  scenario "User should be able to view settings" do 
    visit settings_path

    expect(page).to have_text("Account")
    expect(page).to have_text("Company")
  end

  scenario "User should be able to edit settings for company" do 
    visit edit_setting_path('company')

    within "form" do 
      fill_in "configurable_company_name", with: 'Artellectual Co., Ltd.'
      click_button "Save"
    end

    expect(page).to have_text("Artellectual Co., Ltd.")
  end
end