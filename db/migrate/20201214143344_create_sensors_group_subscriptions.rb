class CreateSensorsGroupSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors_group_subscriptions do |t|
      t.integer :id_sensor_group
      t.integer :id_sensor

      t.timestamps
    end
  end
end
