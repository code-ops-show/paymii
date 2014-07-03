class SettingsController < ApplicationController
  before_filter :load_configurables

  def index
    redirect_to setting_path(Configurable.first.slug)
  end
	
  def show
    @configurable = Configurable.friendly.find(params[:id])
  end
  
private

  def load_configurables
    @configurables = Configurable.all
  end
end
