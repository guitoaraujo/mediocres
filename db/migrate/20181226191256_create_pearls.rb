class CreatePearls < ActiveRecord::Migration[5.2]
  def change
    create_table :pearls do |t|
      t.text :quote
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
