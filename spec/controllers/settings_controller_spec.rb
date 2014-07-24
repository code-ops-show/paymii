require 'rails_helper'

RSpec.describe SettingsController, :type => :controller do
  fixtures :configurables

  describe "GET show" do 
    it "should be success" do 
      get :show, id: 'account'
      expect(response.status).to eq(200)
    end
  end
end
