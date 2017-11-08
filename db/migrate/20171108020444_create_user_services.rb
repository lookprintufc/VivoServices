class CreateUserServices < ActiveRecord::Migration[5.1]
  def change
    create_table :user_services do |t|
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
    add_index :user_services, :user_id
    add_index :user_services, :service_id
  end
end
