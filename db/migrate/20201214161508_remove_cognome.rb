class RemoveCognome < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :cognome, :string
  end
end
