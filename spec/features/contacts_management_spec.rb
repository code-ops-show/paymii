require 'rails_helper'

feature "Contacts Management" do 
  fixtures :contacts

  scenario "User can browse contacts" do 
    visit contacts_path

    expect(page).to have_text("Contact #1")
  end

  scenario "User can create new contact" do 
    visit new_contact_path


    within "#new_contact" do 
      fill_in "contact_name", with: "John Smith"
      fill_in "contact_email", with: "johnsmith@email.com"

      click_button "Save"
    end

    expect(page).to have_text("John Smith")
  end
  
end