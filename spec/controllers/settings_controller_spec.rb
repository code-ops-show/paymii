require 'rails_helper'

RSpec.describe SettingsController, :type => :controller do
  fixtures :configurables

  describe "GET index" do 
    it "should be redirect" do 
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET show" do 
    it "should be success" do 
      get :show, id: 'account'
      expect(response.status).to eq(200)
    end
  end
end
