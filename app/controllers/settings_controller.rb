class SettingsController < ApplicationController
  def show
    @setting = Setting.first
  end
end
