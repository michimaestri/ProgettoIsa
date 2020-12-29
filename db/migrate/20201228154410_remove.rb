class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :sensors, :sensor_group_id
  end
end
