class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.text :teams, array: true, default: []
      t.string :image
      t.string :video

      t.timestamps null: false
    end
  end
end
