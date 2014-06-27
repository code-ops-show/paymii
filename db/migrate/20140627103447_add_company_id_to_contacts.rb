class AddCompanyIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :company_id, :integer, index: true
  end
end
