class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.belongs_to :wb_wood_worker
      t.belongs_to :contact
      t.belongs_to :architect 
      t.belongs_to :broker
      t.belongs_to :pm_firm
      
      t.text :notes 

      t.timestamps
    end
  end
end
