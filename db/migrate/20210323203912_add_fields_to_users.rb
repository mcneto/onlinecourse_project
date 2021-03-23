class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :citizen_id, :string
    add_column :users, :instructor, :boolean, default: false, null: false
  end
end
