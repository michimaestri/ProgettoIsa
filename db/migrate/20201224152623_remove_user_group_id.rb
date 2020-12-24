class RemoveUserGroupId < ActiveRecord::Migration[6.0]
  def change
    remove_column :sensors_groups, :id_user_group
  end
end
