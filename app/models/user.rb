class User < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :followers,
          class_name: "User",
          foreign_key: :user_id,
          associaton_foreign_key: :follower_user_id,
          join_table: :followings
end
