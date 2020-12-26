class RenameBudetColumnToGenres < ActiveRecord::Migration[5.2]
  def change
    rename_column :genres, :budet, :budget
  end
end
