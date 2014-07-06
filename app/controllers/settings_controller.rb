class SettingsController < ApplicationController
  before_filter :load_configurables

  def index
    redirect_to setting_path(Configurable.first.slug)
  end
	
  def show
    @configurable = set_configurable
  end

  def edit
    @configurable = set_configurable
  end
  
private

  def set_configurable
    Configurable.friendly.find(params[:id])
  end

  def load_configurables
    @configurables = Configurable.all
  end
end
