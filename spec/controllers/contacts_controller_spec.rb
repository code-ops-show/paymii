require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  describe "GET index" do 
    it "should be success" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET new" do 
    it "should be success" do 
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST create" do 
    it "should be redirect" do 
      post :create, contact: { name: "Jon Snow", email: "jon.snow@knowsnothing.com" }

      expect(response.status).to eq(302)
    end
  end
end
