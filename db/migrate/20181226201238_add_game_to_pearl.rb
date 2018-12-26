class AddGameToPearl < ActiveRecord::Migration[5.2]
  def change
    add_reference :pearls, :game, foreign_key: true
  end
end
