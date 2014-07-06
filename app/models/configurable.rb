class Configurable < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  store_accessor :settings, :time_zone, :base_currency, :date_format, :currency_display
end
