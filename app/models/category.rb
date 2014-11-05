class Category < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :area
  
  has_many :posts, dependent: :destroy
end
