class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :phone_number
      t.string :current_address
      t.string :future_address 
      t.string :website 
      t.string :linkedin
      t.string :instagram


      t.integer :company_id

      t.timestamps
    end
  end
end
