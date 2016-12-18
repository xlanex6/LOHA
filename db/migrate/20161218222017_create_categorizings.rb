class CreateCategorizings < ActiveRecord::Migration[5.0]
  def change
    create_table :categorizings do |t|
      t.references :users, foreign_key: true, index: true
      t.references :categories, foreign_key: true, index: true

      t.timestamps
    end
  end
end
