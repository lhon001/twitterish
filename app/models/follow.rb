class Follow < ActiveRecord::Base
  #this is the join table
  
  belongs_to :follower, foreign_key: "follower_id", class_name: "User"
  belongs_to :following, foreign_key: "following_id", class_name: "User"

  end
end
