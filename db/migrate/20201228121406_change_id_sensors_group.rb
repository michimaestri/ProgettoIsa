class ChangeIdSensorsGroup < ActiveRecord::Migration[6.0]
  def change
    rename_column :sensors_group_subscriptions, :sensor_group_id, :sensors_group_id
  end
end
