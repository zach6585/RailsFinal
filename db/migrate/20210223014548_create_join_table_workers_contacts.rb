class CreateJoinTableWorkersContacts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :workers, :contacts do |t|
      t.index :worker_id
      t.index :contact_id
    end
  end
end
