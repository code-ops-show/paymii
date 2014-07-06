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

  def update
    @configurable = set_configurable
    if @configurable.update_attributes(configurable_params)
      redirect_to setting_path(@configurable)
    end
  end
  
private

  def configurable_params
    params.require(:configurable).permit!
  end

  def set_configurable
    Configurable.friendly.find(params[:id])
  end

  def load_configurables
    @configurables = Configurable.all.order(:name)
  end
end
