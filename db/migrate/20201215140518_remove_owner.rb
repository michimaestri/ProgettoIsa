class RemoveOwner < ActiveRecord::Migration[6.0]
  def change
    remove_column :sensors, :owner
    add_column :sensors, :user_id, :integer
  end
end
