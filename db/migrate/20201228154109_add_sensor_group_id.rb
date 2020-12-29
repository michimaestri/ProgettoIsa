class AddSensorGroupId < ActiveRecord::Migration[6.0]
  def change
    add_column :sensors, :sensors_group_id, :integer
  end
end
