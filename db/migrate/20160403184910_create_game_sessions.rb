class CreateGameSessions < ActiveRecord::Migration
  def change
    create_table :game_sessions do |t|
      t.string :user_a_id
      t.string :user_b_id
      t.string :game_id
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
