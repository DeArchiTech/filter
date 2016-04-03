class GameSession < ActiveRecord::Base
  belongs_to :user_a, class_name: "User"
  belongs_to :user_b, class_name: "User"
  validates :user_a_id, presence: true
  validates :user_b_id, presence: true
end
