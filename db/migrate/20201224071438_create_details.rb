class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.date :date
      t.integer :genre_id
      t.string :remark
      t.integer :money

      t.timestamps
    end
  end
end
