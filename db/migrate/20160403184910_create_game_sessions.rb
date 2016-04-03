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
    add_index :game_sessions, :user_a_id
    add_index :game_sessions, :user_b_id
    add_index :game_sessions, [:user_a_id, :user_b_id], unique: true
  end
end
