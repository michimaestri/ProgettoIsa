class SensorsGroupSubscription < ActiveRecord::Migration[6.0]
  def change
    drop_table :sensors_group_subscriptions
  end
end
