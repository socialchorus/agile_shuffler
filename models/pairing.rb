class Pairing < ActiveRecord::Base
  belongs_to :leader, foreign_key: :leader_id, class_name: 'Dev'
  belongs_to :follower, foreign_key: :follower_id, class_name: 'Dev'
end