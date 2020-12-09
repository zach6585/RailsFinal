class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :title 
      t.integer :wbw_worker_id
      t.integer :contact_id
      t.text :notes

      t.timestamps
    end
  end
end
