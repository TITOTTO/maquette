class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :description
      t.integer :price
      t.boolean :confirm

      t.timestamps
    end
  end
end
