class ChangeIdSubcription < ActiveRecord::Migration[6.0]
  def change
    rename_column :sensors_group_subscriptions,:id_sensor_group, :sensor_group_id
    rename_column :sensors_group_subscriptions,:id_sensor, :sensor_id
  end
end
