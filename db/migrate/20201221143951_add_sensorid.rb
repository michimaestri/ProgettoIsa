class AddSensorid < ActiveRecord::Migration[6.0]
  def change
  	add_column :misurations, :sensor_id, :integer
  end
end
