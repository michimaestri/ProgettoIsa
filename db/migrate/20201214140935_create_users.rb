class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cognome
      t.string :email

      t.timestamps
    end
  end
end
