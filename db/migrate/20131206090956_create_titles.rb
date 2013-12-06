class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :year
      t.integer :isbn

      t.timestamps
    end
  end
end
