class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def posts_for_area(area)
    area.posts.where(
      "user_id = :user_id and area_id = :area_id",
      user_id: self.id, area_id: area.id
    )
  end
end
