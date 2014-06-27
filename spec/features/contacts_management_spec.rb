require 'rails_helper'

feature "Contacts Management" do 
  fixtures :contacts

  scenario "User can browse contacts" do 
    visit contacts_path

    expect(page).to have_text("Contact #1")
  end

  
end