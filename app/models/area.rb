class Area < ActiveRecord::Base
  has_many :categories, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :name, presence: true, null: false
end
