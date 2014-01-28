class ClosedGroup < ActiveRecord::Base
  attr_accessible :admin_id, :decription, :name

  has_many :user_closed_group
  has_many :closed_group_posts
end
