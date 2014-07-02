class SettingsController < ApplicationController
	layout 'single_card'
	
  def show
    @setting = Setting.first
  end
end
