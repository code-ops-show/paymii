require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  fixtures :contacts

  let(:contact) { contacts(:contact_2) }

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

  describe "GET edit" do 
    it "should be success" do 
      get :edit, id: contact.id
      expect(response.status).to eq(200)
    end
  end

  describe "PATCH/PUT update" do 
    it "should be redirect" do 
      patch :update, id: contact.id, contact: { name: "Steve Jobs" }
      expect(response.status).to eq(302)
    end
  end 

  describe "DELETE destroy" do 
    it "should be redirect" do 
      delete :destroy, id: contact.id
      expect(response.status).to eq(302)
    end
  end 
end
