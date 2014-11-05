class Area < ActiveRecord::Base
  has_many :categories, dependent: :destroy

  validates :name, presence: true, null: false
end
