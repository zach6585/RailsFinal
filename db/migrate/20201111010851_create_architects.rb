class CreateArchitects < ActiveRecord::Migration[6.0]
  def change
    create_table :architects do |t|
      t.string :name
      t.string :email
      t.string :phone_number

      t.integer :company_id
    end
  end
end
