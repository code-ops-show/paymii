require 'rails_helper'

RSpec.describe ProjectsController, :type => :controller do
  fixtures :projects

  let(:project) { projects(:project_1) }

  describe "GET index" do 
    it "should be success" do 
      get :index
      expect(response.status).to eq(200) 
    end
  end
end
