class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :password
  validates :name, :presence => true    
  validates :email, :presence => true

  has_many :user_open_group
  has_many :open_group_posts
  has_many :likes_open_groups
  has_many :likes_open_group_posts
  has_many :comments_open_group_posts
end
