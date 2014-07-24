require 'rails_helper'

feature "Project Management" do 
  fixtures :projects

  let(:project) { projects(:project_1) }

  scenario "Project list" do 
    visit projects_path

    expect(page).to have_content(project.name)
  end
end