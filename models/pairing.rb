class Pairing < ActiveRecord::Base
  belongs_to :devs, foreign_key: :leader_id, class_name: 'Dev'
  belongs_to :devs, foreign_key: :follower_id, class_name: 'Dev'
end