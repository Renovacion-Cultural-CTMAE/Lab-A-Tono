class AddingFieldsToinspirings < ActiveRecord::Migration[7.0]
  def change
    add_column :inspirings, :answers2, :integer
    add_column :inspirings, :answers3, :integer
    add_column :inspirings, :answers4, :integer
    add_column :inspirings, :answers5, :integer
    add_column :inspirings, :answers6, :integer
    add_column :inspirings, :answers7, :integer
    add_column :inspirings, :answers8, :integer
    add_column :inspirings, :answers9, :integer
    add_column :inspirings, :answers10, :integer
  end
end
