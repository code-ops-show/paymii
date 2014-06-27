class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.references :invoice, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
