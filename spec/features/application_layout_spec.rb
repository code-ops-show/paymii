require 'rails_helper'

feature "Application layout" do 

  scenario "User should see main nav" do 
    visit root_path

    expect(page).to have_text("Contacts")
    expect(page).to have_text("Invoices")
    expect(page).to have_text("Projects")
    expect(page).to have_text("Team")
    expect(page).to have_text("Settings")
  end
  
end 