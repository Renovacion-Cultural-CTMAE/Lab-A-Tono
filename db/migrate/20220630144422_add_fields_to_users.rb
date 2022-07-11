class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :inspiring, :boolean
    add_column :users, :relational, :boolean
    add_column :users, :transformational, :boolean
  end
end
