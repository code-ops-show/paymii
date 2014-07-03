class SettingsController < ApplicationController
	layout 'single_card'

  def index
    @configurables = Configurable.all
  end
	
  def show
    @configurable = Configurable.friendly.find(params[:id])
  end
end
