class CreateInspirings < ActiveRecord::Migration[7.0]
  def change
    create_table :inspirings do |t|
      t.integer :answers
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
