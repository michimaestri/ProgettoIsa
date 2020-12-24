class UpdateAlarm < ActiveRecord::Migration[6.0]
  def change
    change_column :sensors, :downtime_to_alarm, :datetime
  end
end
