class CreateConfigurables < ActiveRecord::Migration
  def change
    create_table :configurables do |t|
      t.string :name
      t.string :slug
      t.hstore :settings

      t.timestamps
    end
  end
end
