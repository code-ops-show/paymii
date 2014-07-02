class ChangeVatToFloat < ActiveRecord::Migration
  def change
    change_column :settings, :vat, :float
  end
end
