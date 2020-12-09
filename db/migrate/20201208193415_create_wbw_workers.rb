class CreateWbwWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :wbw_workers do |t|
      t.string :name
      t.string :email
      t.boolean :admin, default: false 
      t.timestamps
    end
  end
end
