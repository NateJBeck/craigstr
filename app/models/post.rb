class Post < ActiveRecord::Base
  validates :body, presence: true
  validates :title, presence: true

  belongs_to :user

  def self.spam_listings
    Post.where("spam > ?", 0).order(spam: :desc)
  end
end
