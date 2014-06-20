class AddCompletedToListItem < ActiveRecord::Migration
  def change
    add_column :list_items, :completed, :datetime
  end
end
