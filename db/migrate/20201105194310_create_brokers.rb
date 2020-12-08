class CreateBrokers < ActiveRecord::Migration[6.0]
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :email
      t.string :phone_number

      t.integer :company_id
      t.timestamps
    end
  end
end
