class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :link
      t.text :quote
      t.string :author
      t.string :title
      t.timestamps
    end
  end
end
