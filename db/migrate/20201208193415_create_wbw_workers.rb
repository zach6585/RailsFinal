class CreateWbwWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :wbw_workers do |t|
      t.string :fullname
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false 
      t.timestamps
    end
  end
end
