class Post < ActiveRecord::Base
  validates :content, :title, presence: true 
  belongs_to :user
  has_many :comments
end
