class User < ActiveRecord::Base
  validates :username, :uid, :name, presence: true
  has_many :posts
  has_many :comments
  has_many :tools, through: :ToolUsers

  def self.find_or_create_from_omniauth(auth_hash) # Find or create a user end
  end

  def self.create_from_omniauth(auth_hash)
    # Create a user end
  end
end
