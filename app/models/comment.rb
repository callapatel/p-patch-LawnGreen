class Comment < ActiveRecord::Base
  validates :content 
  belongs_to :post
end
