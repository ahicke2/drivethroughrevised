class CreateTbells < ActiveRecord::Migration
  def change
    create_table :tbells do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
