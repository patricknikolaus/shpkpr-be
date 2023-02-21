class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
