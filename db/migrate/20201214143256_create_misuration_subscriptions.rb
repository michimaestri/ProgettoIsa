class CreateMisurationSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :misuration_subscriptions do |t|
      t.string :mac
      t.integer :user_id

      t.timestamps
    end
  end
end
