require 'rails_helper'

RSpec.describe SettingsController, :type => :controller do
  fixtures :settings

  describe "GET show" do 
    it "should be success" do 
      get :show
      expect(response.status).to eq(200)
    end
  end
end
