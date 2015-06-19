class CreateFastfoods < ActiveRecord::Migration
  def change
    create_table :fastfoods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
