class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :contact, index: true
      t.integer :number

      t.timestamps
    end
  end
end
