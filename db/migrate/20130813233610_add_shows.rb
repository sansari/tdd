class AddShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
