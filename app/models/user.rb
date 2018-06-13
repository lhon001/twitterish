class User < ActiveRecord::Base
  has_many :tweets

  #:follower_follows is people following you
  #follower_follows names the follow join table otherwise there will be a name conflict
  has_many :followers, through: :follower_follows, source: :follower
  has_many :follower_follows, foreign_key: :following_id, class_name: "Follow"

  has_many :followings, through: :following_follows, source: :following
  has_many :following_follows, foreign_key: :follower_id, class_name: "Follow"

end
