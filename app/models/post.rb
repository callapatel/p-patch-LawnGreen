class Post < ActiveRecord::Base
  validates :content, :title 
  belongs_to :user
  has_many :comments
end
