require 'rails_helper'

feature "Contacts Management" do 
  fixtures :contacts

  let(:contact) { contacts(:contact_1)}

  scenario "User should see main nav" do 
    visit root_path

    expect(page).to have_text("Contacts")
    expect(page).to have_text("Invoices")
    expect(page).to have_text("Projects")
    expect(page).to have_text("Team")
  end

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

  scenario "User can edit contact" do 
    visit edit_contact_path(contact)

    within "#edit_contact_#{contact.id}" do 
      fill_in "contact_name", with: "Steve Jobs"

      click_button "Save"
    end

    expect(page).to have_text "Steve Jobs"
  end

  scenario "User can cancel edit" do 
    visit edit_contact_path(contact)

    click_link "Cancel"
    expect(current_path).to eq contacts_path
  end

  scenario "User can delete contact" do 
    visit contacts_path

    within "#contact_#{contact.id}" do 
      click_link "Delete"
    end

    expect(page).not_to have_text(contact.name)
  end
  
end