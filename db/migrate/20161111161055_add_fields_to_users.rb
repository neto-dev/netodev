class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string
    add_column :users, :role, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
  end
end
