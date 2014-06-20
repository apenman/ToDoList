class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :list, index: true
      t.string :task
      t.text :description

      t.timestamps
    end
  end
end
