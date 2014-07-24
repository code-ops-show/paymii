class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.references :user, index: true
      t.references :project

      t.timestamps
    end
  end
end
