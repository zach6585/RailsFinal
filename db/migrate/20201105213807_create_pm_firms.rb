class CreatePmFirms < ActiveRecord::Migration[6.0]
  def change
    create_table :pm_firms do |t|
      t.string :name
      t.string :email
      t.string :phone_number

      t.integer :company_id
      t.timestamps
    end
  end
end
