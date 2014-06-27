class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :company
      t.text :address
      t.integer :vat
      t.string :default_currency

      t.timestamps
    end
  end
end
