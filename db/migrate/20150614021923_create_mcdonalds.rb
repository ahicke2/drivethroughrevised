class CreateMcdonalds < ActiveRecord::Migration
  def change
    create_table :mcdonalds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
