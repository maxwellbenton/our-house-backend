class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :url
      t.string :section
      t.integer :score

      t.timestamps
    end
  end
end
