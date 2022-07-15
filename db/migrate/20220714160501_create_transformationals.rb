class CreateTransformationals < ActiveRecord::Migration[7.0]
  def change
    create_table :transformationals do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :answers
      t.integer :answers2
      t.integer :answers3
      t.integer :answers4
      t.integer :answers5
      t.integer :answers6
      t.integer :answers7
      t.integer :answers8
      t.integer :answers9
      t.integer :answers10

      t.timestamps
    end
  end
end
