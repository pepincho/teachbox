class OpenGroupPost < ActiveRecord::Base
  attr_accessible :content, :open_group_id, :title, :user_id

  belongs_to :user
  belongs_to :open_group

  has_many :likes_open_group_posts
  has_many :comments_open_group_posts
end
