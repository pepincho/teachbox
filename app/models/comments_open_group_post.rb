class CommentsOpenGroupPost < ActiveRecord::Base
  attr_accessible :content, :open_group_post_id, :user_id
end
