class User < ActiveRecord::Base
  has_many :game_sessions, class_name: "GameSession",
	  foreign_key: "user_b_id",
	  dependent: :destroy
  has_many :previous_opponents, through: :game_sessions, source: :user_a
end
