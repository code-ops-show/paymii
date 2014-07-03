class SettingsController < ApplicationController
	layout 'single_card'

  def index
    redirect_to setting_path(Configurable.first.slug)
  end
	
  def show
    @configurables = Configurable.all
    @configurable = Configurable.friendly.find(params[:id])
  end
end
