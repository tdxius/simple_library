class AddBooksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :year
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
