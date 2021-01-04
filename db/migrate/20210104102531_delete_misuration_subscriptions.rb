class DeleteMisurationSubscriptions < ActiveRecord::Migration[6.0]
  def change
  	drop_table :misuration_subscriptions
  	
  end
end
