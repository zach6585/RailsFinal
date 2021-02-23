class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :name 
      t.string :email 
      t.string :number
      t.string :title  
      t.string :old_address 
      t.string :new_address 
      t.string :category
      t.string :broker_name
      t.string :broker_company
      t.string :broker_number
      t.string :architect_name
      t.string :architect_company
      t.string :architect_number
      t.string :consultant_name
      t.string :consultant_company
      t.string :consultant_number
      t.text :notes 
      t.timestamps
    end
  end
end